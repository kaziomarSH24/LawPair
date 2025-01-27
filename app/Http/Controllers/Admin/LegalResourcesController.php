<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\LegalResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class LegalResourcesController extends Controller
{
    //get all legal resources
    public function getAllResources(Request $request){
        $perPage = $request->per_page ?? 10;
        $legalResources = LegalResource::orderBy('id', 'desc')->paginate($perPage);
        if ($legalResources->count() == 0) {
            return response()->json([
                'success' => false,
                'message' => 'No legal resource found!'
            ], 404);
        }
        $legalResources->transform(function($legalResource){
            $image = $legalResource->image;
            if ($image) {
                $image = asset('storage/' . $image);
            }
            return [
                'id' => $legalResource->id,
                'title' => $legalResource->title,
                'description' => $legalResource->description,
                'image' => $image,
                'created_at' => $legalResource->created_at->format('d M Y'),
            ];
        });

        return response()->json([
            'success' => true,
            'legal_resources' => $legalResources
        ], 200);
    }
    //show legal resource by id
    public function showResource($id){
        $legalResource = LegalResource::find($id);
        if (!$legalResource) {
            return response()->json([
                'success' => false,
                'message' => 'Legal resource not found!'
            ], 404);
        }
        $image = $legalResource->image;
        if ($image) {
            $image = asset('storage/' . $image);
        }
        return response()->json([
            'success' => true,
            'legal_resource' => [
                'id' => $legalResource->id,
                'title' => $legalResource->title,
                'description' => $legalResource->description,
                'image' => $image,
                'created_at' => $legalResource->created_at->format('d M Y'),
            ]
        ], 200);
    }

    //store legal resource
    public function storeResource(Request $request){
        $validator = Validator::make($request->all(), [
            'title' => 'required|string',
            'description' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg,svg',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => $validator->errors()
            ], 400);
        }

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imagePath = $image->store('uploads/legal_resources', 'public');
        }
        $legalResource = LegalResource::create([
            'title' => $request->title,
            'description' => $request->description,
            'image' => $imagePath,
        ]);
        return response()->json([
            'success' => true,
            'message' => 'Legal resource created successfully!',
            'legal_resource' => $legalResource
        ], 201);
    }

    //update legal resource
    public function updateResource(Request $request, $id){
        $legalResource = LegalResource::find($id);
        if (!$legalResource) {
            return response()->json([
                'success' => false,
                'message' => 'Legal resource not found!'
            ], 404);
        }
        $validator = Validator::make($request->all(), [
            'title' => 'required|string',
            'description' => 'required|string',
            'image' => 'image|mimes:jpeg,png,jpg,svg',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => $validator->errors()
            ], 400);
        }
        $imageUrl = null;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            //remove old image
            if ($legalResource->image && Storage::disk('public')->exists($legalResource->image)) {
                Storage::disk('public')->delete($legalResource->image);
            }
            $imagePath = $image->store('uploads/legal_resources', 'public');
            $legalResource->image = $imagePath;
            //imgae url
            $imageUrl = asset('storage/' . $imagePath);
        }
        $legalResource->title = $request->title;
        $legalResource->description = $request->description;
        $legalResource->save();
        return response()->json([
            'success' => true,
            'message' => 'Legal resource updated successfully!',
            'legal_resource' => array_merge($legalResource->toArray(), ($imageUrl ? ['image' => $imageUrl] : ['image' => asset('storage/' . $legalResource->image)]))
        ], 200);
    }

    //delete legal resource
    public function deleteResource($id){
        $legalResource = LegalResource::find($id);
        if (!$legalResource) {
            return response()->json([
                'success' => false,
                'message' => 'Legal resource not found!'
            ], 404);
        }
        //remove image
        if ($legalResource->image && Storage::disk('public')->exists($legalResource->image)) {
            Storage::disk('public')->delete($legalResource->image);
        }
        $legalResource->delete();
        return response()->json([
            'success' => true,
            'message' => 'Legal resource deleted successfully!'
        ], 200);
    }
}
