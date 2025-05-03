<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class AdminController extends Controller
{
    /**
     * Category Methods
     */
    //get all categories
    public function getCategories(Request $request){
        $perPage = $request->per_page ?? 10;
        $categories = Category::orderBy('id', 'desc')->paginate($perPage);
        if ($categories->count() == 0) {
            return response()->json([
                'success' => false,
                'message' => 'No category found!'
            ], 404);
        }
        $categories->transform(function($category){
            $imageIcon = $category->image_icon;
            if ($imageIcon) {
                $imageIcon = asset('storage/' . $imageIcon);
            }
            return [
                'id' => $category->id,
                'name' => $category->name,
                'image_icon' => $imageIcon,
                'description' => $category->description,
                'created_at' => $category->created_at->format('d M Y'),
            ];
        });

        return response()->json([
            'success' => true,
            'categories' => $categories
        ], 200);
    }

    //show category by id
    public function showCategory($id){
        $category = Category::find($id);
        if (!$category) {
            return response()->json([
                'success' => false,
                'message' => 'Category not found!'
            ], 404);
        }
        $imageIcon = $category->image_icon;
        if ($imageIcon) {
            $imageIcon = asset('storage/' . $imageIcon);
        }
        return response()->json([
            'success' => true,
            'category' => array_merge($category->toArray(), ['image_icon' => $imageIcon])
        ], 200);
    }

    //store category
    public function storeCategory(Request $request){

       try {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|unique:categories,name',
            'image_icon' => 'required|image|mimes:png,svg',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }
        $imageIcon = $request->file('image_icon');
        if ($request->hasFile('image_icon')) {
            $imagePath = $imageIcon->store('uploads/categories', 'public');
        }
        $category = new Category();
        $category->name = $request->name;
        $category->description = $request->description;
        $category->image_icon = $imagePath;
        $category->save();

        return response()->json([
            'success' => true,
            'message' => 'Category created successfully!',
            'category' => $category
        ], 201);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ], 500);
        }

    }

    //update category
    public function updateCategory(Request $request, $id){
        try {
            $category = Category::find($id);
            if (!$category) {
                return response()->json([
                    'success' => false,
                    'message' => 'Category not found!'
                ], 404);
            }
            $validator = Validator::make($request->all(), [
                'name' => 'required|string|unique:categories,name,' . $id,
                'image_icon' => 'nullable|image|mimes:png,svg',
            ]);

            if ($validator->fails()) {
                return response()->json($validator->errors(), 400);
            }
            $imageIcon = $request->file('image_icon');
            if ($request->hasFile('image_icon')) {
                $old_image = $category->image_icon;
                if ($old_image && Storage::disk('public')->exists($old_image)) {
                    Storage::disk('public')->delete($old_image);
                }
                $imagePath = $imageIcon->store('uploads/categories', 'public');
                $category->image_icon = $imagePath;
                $imageUrl = asset('storage/' . $imagePath);
            }
            $category->name = $request->name;
            $category->description = $request->description;
            $category->save();

            return response()->json([
                'success' => true,
                'message' => 'Category updated successfully!',
                'category' => array_merge($category->toArray(), ['image_icon' => $imageUrl ?? asset('storage/' . $category->image_icon)])
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ], 500);
        }
    }

    //delete category
    public function deleteCategory($id){
        try {
            $category = Category::find($id);
            if (!$category) {
                return response()->json([
                    'success' => false,
                    'message' => 'Category not found!'
                ], 404);
            }
            $imageIcon = $category->image_icon;
            if ($imageIcon && Storage::disk('public')->exists($imageIcon)) {
                Storage::disk('public')->delete($imageIcon);
            }
            $category->delete();
            return response()->json([
                'success' => true,
                'message' => 'Category deleted successfully!'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Manage users
     */
     public function getAllUsers(Request $request){
        $search = $request->search;
        $perPage = $request->per_page ?? 10;
        $users = User::with('lawyer')
            ->where(function($query){
            $query->where('role', 'user')
                ->orWhere('role', 'lawyer');
            })
            ->where(function($query) use ($search) {
            $query->where('first_name', 'like', '%' . $search . '%')
                ->orWhere('last_name', 'like', '%' . $search . '%')
                ->orWhere('email', 'like', '%' . $search . '%')
                ->orWhereHas('lawyer', function($lawyerQuery) use ($search) {
                $lawyerQuery->where('id_number', 'like', '%' . $search . '%');
                });
            })
            ->orderBy('id', 'desc')
            ->paginate($perPage);
            if ($users->count() == 0) {
            return response()->json([
                'success' => false,
                'message' => 'No user found!'
            ], 404);
            }
        $users->transform(function($user){
            $avatar = $user->avatar;
            // if ($avatar) {
            //     $avatar = asset('storage/' . $avatar);
            // }
            return [
                'id' => $user->id,
                'first_name' => $user->first_name,
                'last_name' => $user->last_name,
                'full_name' => $user->full_name,
                'id_number' => $user->role == "lawyer" && $user->lawyer ? $user->lawyer->id_number : null,
                'phone' => $user->phone,
                'email' => $user->email,
                'avatar' => $avatar,
                'role' => $user->role == "user" ? "Client" : ($user->role == "lawyer" ? "Lawyer" : "Admin"),
                'created_at' => $user->created_at->format('d M Y'),
            ];
        });
        return response()->json([
            'success' => true,
            'users' => $users
        ], 200);
     }

     //delete user
        public function deleteUser($id){
            try {
                $user = User::find($id);
                if (!$user) {
                    return response()->json([
                        'success' => false,
                        'message' => 'User not found!'
                    ], 404);
                }
                $avatar = str_replace('/storage/', '', parse_url($user->avatar)['path']);
                if ($avatar && Storage::disk('public')->exists($avatar)) {
                    Storage::disk('public')->delete($avatar);
                }
                $user->delete();
                return response()->json([
                    'success' => true,
                    'message' => 'User deleted successfully!'
                ], 200);
            } catch (\Exception $e) {
                return response()->json([
                    'success' => false,
                    'message' => $e->getMessage()
                ], 500);
            }
        }

    //get admin profile
    public function adminProfile(){
        $user = auth()->user();
        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'No admin profile found!'
            ], 404);
        }
        $avatar = $user->avatar;
        // if ($avatar) {
        //     $avatar = asset('storage/' . $avatar);
        // }
        return response()->json([
            'success' => true,
            'user' => [
                'id' => $user->id,
                'first_name' => $user->first_name,
                'last_name' => $user->last_name,
                'full_name' => $user->full_name,
                'phone' => $user->phone,
                'email' => $user->email,
                'avatar' => $avatar,
                'address' => $user->address,
                'role' => $user->role,
                'created_at' => $user->created_at->format('d M Y'),
            ]
        ], 200);
    }
}
