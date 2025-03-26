<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
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
}
