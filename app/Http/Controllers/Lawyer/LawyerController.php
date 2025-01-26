<?php

namespace App\Http\Controllers\Lawyer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LawyerController extends Controller
{
    public function updateLawyerProfile(Request $request)
    {
        $user = auth()->user();

        if($user->role != 'lawyer') {
            return response()->json(['message' => 'You are not authorized to perform this action'], 403);
        }

        return response()->json(['message' => 'Profile updated successfully']);
    }
}
