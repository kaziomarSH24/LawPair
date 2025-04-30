<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Favorite;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    //get user profile
    public function getProfile(){
        $user = Auth::user();
        if ($user->role !== 'user') {
            return response()->json([
            'status' => 'error',
            'message' => 'Unauthorized'
            ], 403);
        }

        // $user->avatar = $user->avatar ? asset('storage/' . $user->avatar) : null;

        return response()->json([
            'status' => 'success',
            'data' => $user
        ]);
    }

    //get user or laywer by id
    public function getUserById($id)
    {

        if ($id) {
            $user = User::with('lawyer')->where('id', $id)->first();
            if (!$user) {
                return response()->json([
                    'success' => false,
                    'message' => 'User not found!'
                ], 404);
            }

            if($user->role === 'lawyer' && $user->lawyer){
                $serviceIds = json_decode($user->lawyer->service_ids);
                $categories = is_array($serviceIds) ? Category::whereIn('id', $serviceIds)->pluck('name') : collect();
            } else {
                $categories = collect();
            }
            if($user->lawyer){
                $is_favorite = Favorite::where('lawyer_id', $user->lawyer->id)->where('user_id', auth()->id())->exists();
            } else {
                $is_favorite = null;
            }
            $avatar = $user->avatar;


            $user = [
                'id' => $user->id,
                'lawyer_id' => $user->role === 'lawyer' && $user->lawyer ? $user->lawyer->id : null,
                'first_name' => $user->first_name,
                'last_name' => $user->last_name,
                'full_name' => $user->full_name,
                'role' => $user->role,
                'phone' => $user->phone,
                'email' => $user->email,
                'avatar' => $avatar,
                'categories' => $user->role === 'lawyer' && $user->lawyer ? (is_string($categories) ? json_decode($categories) : $categories) : null,
                'practice_area' => $user->role === 'lawyer' && $user->lawyer ? $user->lawyer->practice_area : null,
                'experience' => $user->role === 'lawyer' && $user->lawyer ? $user->lawyer->experience : null,
                'state' => $user->role === 'lawyer' && $user->lawyer ? $user->lawyer->state : null,
                'address' => $user->role === 'lawyer' && $user->lawyer ? $user->lawyer->address : null,
                'phone' => $user->role === 'lawyer' && $user->lawyer ? $user->lawyer->phone : null,
                'languages' => $user->role === 'lawyer' && $user->lawyer ? $user->lawyer->languages : null,
                'web_link' => $user->role === 'lawyer' && $user->lawyer ? $user->lawyer->web_link : null,
                'linkedin_url' => $user->role === 'lawyer' && $user->lawyer ? $user->lawyer->linkedin_url : null,
                'schedule' => $user->role === 'lawyer' && $user->lawyer ? (is_string($user->lawyer->schedule) ? json_decode($user->lawyer->schedule) : $user->lawyer->schedule) : null,
                'is_favorite' =>  $user->lawyer ? $is_favorite : null,
                'created_at' => $user->role === 'lawyer' && $user->lawyer ? $user->lawyer->created_at : $user->created_at,
            ];
            return response()->json([
                'success' => true,
                'user' => $user
            ], 200);
        }
        return response()->json([
            'success' => false,
            'message' => 'Profile not found'
        ], 404);
    }
}
