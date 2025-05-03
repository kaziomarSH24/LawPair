<?php

namespace App\Http\Controllers\Lawyer;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Lawyer;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class LawyerController extends Controller
{
    public function updateLawyerProfile(Request $request)
{
    DB::beginTransaction();
    try {
        $user = auth()->user();
        $validator = Validator::make($request->all(), [
            'service_ids' => 'required|json',
            'practice_area' => 'required|string',
            'id_number' => 'required|string',
            'experience' => 'nullable|string',
            'languages' => 'required|string',
            'avatar' => 'nullable|image|mimes:jpeg,png,jpg,svg',
            'state' => 'required|string',
            'address' => 'required|string',
            'city' => 'required|string',
            'zipcode' => 'required|string',
            'phone' => 'required|string|unique:users,phone,' . $user->id,
            'web_link' => 'nullable|url',
            'linkedin_url' => 'nullable|regex:/^https?:\/\/(www\.)?linkedin\.com\/.*$/i',
            'schedule' => 'nullable|string',
        ],
        [
            'linkedin_url.regex' => 'Please enter a valid LinkedIn profile URL',
        ]


    );

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => $validator->errors()->first()
            ],400);
        }

        // Check update limit
        $currentWeekStart = now()->startOfWeek();
        $currentWeekEnd = now()->endOfWeek();
        $lastUpdated = $user->last_updated_at ? Carbon::parse($user->last_updated_at) : null;

        if ($lastUpdated && $lastUpdated->between($currentWeekStart, $currentWeekEnd)) {
            if ($user->update_count >= 2) {
                return response()->json([
                    'success' => false,
                    'message' => 'You can only update your profile twice a week.'
                ], 400);
            }
        } else {
            $user->update_count = 0;
        }

        if ($user) {
            $lawer_id = $user->id;
            $lawyer = Lawyer::updateOrCreate(
                ['user_id' => $lawer_id],
                [
                    'service_ids' => $request->service_ids,
                    'practice_area' => $request->practice_area,
                    'id_number' => $request->id_number,
                    'experience' => $request->experience,
                    'state' => $request->state,
                    'city' => $request->city,
                    'languages' => $request->languages,
                    'web_link' => $request->web_link,
                    'zipcode'=>$request->zipcode,
                    'linkedin_url' => $request->linkedin_url,
                    'schedule' => $request->schedule,
                ]
            );

            // Upload avatar in user table
            $user->phone = $request->phone;
            $user->address = $request->address;
            if ($request->hasFile('avatar')) {
                // Check old avatar and delete
                if (!empty($user->avatar)) {
                    $old_avatar = str_replace('/storage/', '', parse_url($user->avatar)['path']);
                    // return $old_avatar;
                    if (Storage::disk('public')->exists($old_avatar)) {
                        Storage::disk('public')->delete($old_avatar);
                    }
                }
                $avatar = $request->file('avatar');
                $user->avatar = $avatar->store('uploads/avatars', 'public');
            }

            // Update last updated time and increment update count
            $user->last_updated_at = now();
            $user->update_count += 1;
            $user->save();
        }

        DB::commit();
        return response()->json([
            'success' => true,
            'message' => 'Profile updated successfully',
            'data'=>$lawyer,
        ], 200);
    } catch (\Exception $e) {
        DB::rollBack();
        return response()->json([
            'success' => false,
            'message' => 'Something went wrong!',
            'error' => $e->getMessage()
        ], 500);
    }
}

    public function getLawyerProfile(Request $request)
    {
        $user = auth()->user();
        if ($user) {
            $lawyer = Lawyer::where('user_id', $user->id)->first();

            $serviceIds = json_decode($lawyer->service_ids);
            $categories = Category::whereIn('id', $serviceIds)->pluck('name');

            $avatar = $user->avatar;

            // return $lawyer;

            $lawyer = [
                'id' => $lawyer->id,
                'user_id' => $lawyer->user_id,
                'first_name' => $user->first_name,
                'last_name' => $user->last_name,
                'full_name' => $user->full_name,
                'phone' => $user->phone,
                'email' => $user->email,
                'avatar' => $avatar,
                'categories' => json_decode($categories),
                'category_ids' => $lawyer->service_ids,
                'practice_area' => $lawyer->practice_area,
                'experience' => $lawyer->experience,
                'id_number' => $lawyer->id_number,
                'state' => $lawyer->state,
                'zipcode' => $lawyer->zipcode,
                'city' => $lawyer->city,
                'address' => $user->address,
                'languages' => $lawyer->languages,
                'web_link' => $lawyer->web_link,
                'linkedin_url' => $lawyer->linkedin_url,
                'schedule' => json_decode($lawyer->schedule),
            ];
            return response()->json([
                'success' => true,
                'lawyer' => $lawyer
            ], 200);
        }
        return response()->json([
            'success' => false,
            'message' => 'Profile not found'
        ], 404);
    }

    public function getLawyers(Request $request){
        $perPage = $request->per_page ?? 10;
        $lawyers = Lawyer::with('user')
            ->orderBy('id', 'desc')
            ->paginate($perPage);
            if ($lawyers->count() == 0) {
                return response()->json([
                    'success' => false,
                    'message' => 'No lawyer found!'
                ], 404);
            }
        $lawyers->transform(function($lawyer){
            $avatar = $lawyer->user->avatar;
            // if ($avatar) {
            //     $avatar = asset('storage/' . $avatar);
            // }
            return [
                'id' => $lawyer->id,
                'first_name' => $lawyer->user->first_name,
                'last_name' => $lawyer->user->last_name,
                'full_name' => $lawyer->user->full_name,
                'id_number' => $lawyer->id_number,
                'phone' => $lawyer->user->phone,
                'email' => $lawyer->user->email,
                'avatar' => $avatar,
                'role' => $lawyer->user->role == "user" ? "Client" : ($lawyer->user->role == "lawyer" ? "Lawyer" : "Admin"),
                'created_at' => $lawyer->created_at->format('d M Y'),
            ];
        });
        return response()->json([
            'success' => true,
            'lawyers' => $lawyers
        ], 200);
     }
}
