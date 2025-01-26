<?php

namespace App\Http\Controllers\Lawyer;

use App\Http\Controllers\Controller;
use App\Models\Lawyer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class LawyerController extends Controller
{
    public function updateLawyerProfile(Request $request)
    {
        try {
            $user = auth()->user();
            $validator = Validator::make($request->all(), [
                'service_ids' => 'required|json',
                'practice_area' => 'required',
                'experience' => 'required',
                'languages' => 'required',
                'location' => 'required',
                'area' => 'required',
                'zip_code' => 'required',
                'web_link' => 'required',
                'schedule' => 'required'
            ]);
            if($user){
                $lawer_id = $user->id;
                //update or create lawyer profile
                $lawyer = Lawyer::updateOrCreate(
                    ['user_id' => $lawer_id],
                    [
                        'service_ids' => $request->service_ids,
                        'practice_area' => $request->practice_area,
                        'experience' => $request->experience,
                        'languages' => $request->languages,
                        'location' => $request->location,
                        'area' => $request->area,
                        'zip_code' => $request->zip_code,
                        'web_link' => $request->web_link,
                        'schedule' => $request->schedule

                    ]
                );
            }

            return response()->json(['message' => 'Profile updated successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Something went wrong'], 500);
        }
    }
}
