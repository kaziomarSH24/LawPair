<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\About;
use App\Models\Disclaimer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SettingController extends Controller
{
    //update or create about
    public function updateAbout(Request $request){
        try {
            $validator = Validator::make($request->all(),[
                'about' => 'required|string',
         ]);

         if ($validator->fails()) {
             return response()->json($validator->errors(), 400);
         }

         $about = About::updateOrCreate(
             ['id' => 1],
             [
                 'about' => $request->about,
             ]
         );

           return response()->json([
                'success' => true,
                'message' => 'About updated successfully!',
                'about' => $about
           ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong!',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    //update or create disclaimer
    public function updateDisclaimer(Request $request){
        try {
            $validator = Validator::make($request->all(),[
                'disclaimer' => 'required|string',
         ]);

         if ($validator->fails()) {
             return response()->json($validator->errors(), 400);
         }

         $disclaimer = Disclaimer::updateOrCreate(
             ['id' => 1],
             [
                 'disclaimer' => $request->disclaimer,
             ]
         );

           return response()->json([
                'success' => true,
                'message' => 'Disclaimer updated successfully!',
                'disclaimer' => $disclaimer
           ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong!',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    //get About
    public function getAbout(){
        $settings = About::first();
        if (!$settings) {
            return response()->json([
                'success' => false,
                'message' => 'Settings not found!'
            ], 404);
        }
        return response()->json([
            'success' => true,
            'settings' => $settings
        ], 200);
    }


    //get Disclaimer
    public function getDisclaimer(){
        $settings = Disclaimer::first();
        if (!$settings) {
            return response()->json([
                'success' => false,
                'message' => 'Settings not found!'
            ], 404);
        }
        return response()->json([
            'success' => true,
            'settings' => $settings
        ], 200);
    }
}



