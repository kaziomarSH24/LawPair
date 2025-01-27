<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SettingController extends Controller
{
    //update or create settings
    public function updateSettings(Request $request){
        try {
            $validator = Validator::make($request->all(),[
                'about' => 'required|string',
                'disclaimer' => 'required|string',
         ]);

         if ($validator->fails()) {
             return response()->json($validator->errors(), 400);
         }

         $settings = Setting::updateOrCreate(
             ['id' => 1],
             [
                 'about' => $request->about,
                 'disclaimer' => $request->disclaimer,
             ]
         );

           return response()->json([
                'success' => true,
                'message' => 'Settings updated successfully!',
                'settings' => $settings
           ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong!',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    //get settings
    public function getSettings(){
        $settings = Setting::first();
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



