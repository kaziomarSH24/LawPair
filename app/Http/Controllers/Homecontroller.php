<?php

namespace App\Http\Controllers;

use App\Models\Lawyer;
use App\Models\Category;
use App\Models\Favorite;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Homecontroller extends Controller
{
    //find lawyer
    public function findLawyers(Request $request){
        try {
             $serviceIds = is_array($request->input('service_ids'))
             ? $request->input('service_ids')
             : json_decode($request->input('service_ids'), true);

             if (!is_array($serviceIds)) {
                return response()->json([
                    'error' => 'Invalid format. Please send JSON array.',
                ], 400);
            }

            $lawyers = Lawyer::with('user')
                ->where('state', $request->state)
                ->where('city', 'like', '%' . $request->city . '%')
                ->where(function ($query) use ($serviceIds) {
                    foreach ($serviceIds as $id) {
                        $query->orWhereJsonContains('service_ids', $id);
                    }
                })
                ->paginate($request->per_page ?? 10);
                if($lawyers->count() == 0){
                    return response()->json([
                        'success' => false,
                        'message' => 'No lawyer found!'
                    ], 404);
                }
                // return collect($lawyers)->service_ids;


                $lawyers->getCollection()->transform(function($lawyer){
                    $avatar = $lawyer->user->avatar;
                    $is_favorite = Favorite::where('lawyer_id', $lawyer->id)->where('user_id', auth()->id())->exists();
                    // dd();
                    $categories = Category::whereIn('id', json_decode($lawyer->service_ids))->pluck('name');
                    // if ($avatar) {
                    //     $avatar = asset('storage/' . $avatar);
                    // }
                    return [
                        'id' => $lawyer->id,
                        'first_name' => $lawyer->user->first_name,
                        'last_name' => $lawyer->user->last_name,
                        'full_name' => $lawyer->user->full_name,
                        'email' => $lawyer->user->email,
                        'phone' => $lawyer->phone,
                        'avatar' => $avatar,
                        'categories' => is_string($categories) ? json_decode($categories) : $categories,
                        'state' => $lawyer->state,
                        'city' => $lawyer->city,
                        'address' => $lawyer->user->address,
                        'languages' => $lawyer->languages,
                        'experience' => $lawyer->experience,
                        'is_favorite' => $is_favorite,
                        'created_at' => $lawyer->created_at->format('d M Y'),
                    ];
                });

            return response()->json([
                'success' => true,
                'lawyers' => $lawyers
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong!',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    //get laywer by id
    public function getLawyerProfile($id)
    {

        if ($id) {
            $lawyer = Lawyer::with('user')->where('id', $id)->first();
            if (!$lawyer) {
                return response()->json([
                    'success' => false,
                    'message' => 'Lawyer not found! Please give the valid lawyer id.'
                ], 404);
            }

            $serviceIds = json_decode($lawyer->service_ids);
            $categories = Category::whereIn('id', $serviceIds)->pluck('name');

            $avatar = $lawyer->user->avatar;
            // if ($avatar) {
            //     $avatar = asset('storage/' . $avatar);
            // }

            $is_favorite = Favorite::where('lawyer_id', $lawyer->id)->where('user_id', auth()->id())->exists();
            // return $lawyer;
            $lawyer = [
                'id' => $lawyer->id,
                'user_id' => $lawyer->user_id,
                'first_name' => $lawyer->user->first_name,
                'last_name' => $lawyer->user->last_name,
                'full_name' => $lawyer->user->full_name,
                'phone' => $lawyer->user->phone,
                'email' => $lawyer->user->email,
                'avatar' => $avatar,
                'categories' => is_string($categories) ? json_decode($categories) : $categories,
                'practice_area' => $lawyer->practice_area,
                'experience' => $lawyer->experience,
                'id_number' => $lawyer->id_number,
                'state' => $lawyer->state,
                'address' => $lawyer->user->address,
                'city' => $lawyer->city,
                'languages' => $lawyer->languages,
                'zipcode'=>$lawyer->zipcode,
                'web_link' => $lawyer->web_link,
                'linkedin_url' => $lawyer->linkedin_url,
                'schedule' => is_string($lawyer->schedule) ? json_decode($lawyer->schedule) : $lawyer->schedule,
                'is_favorite' => $is_favorite,
                'created_at' => $lawyer->created_at
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

    //search lawyer by name
    public function searchLawyer(Request $request){
        $searchKey = $request->name;

        $lawyers = Lawyer::with('user')
        ->whereHas('user', function ($query) use ($searchKey) {
            $query->where(DB::raw("CONCAT(first_name, ' ', last_name)"), 'like', "%$searchKey%");
        })
        ->paginate($request->per_page ?? 10);

        if($lawyers->count() == 0){
            return response()->json([
                'success' => false,
                'message' => 'No lawyer found!'
            ], 404);
        }

        $lawyers->getCollection()->transform(function($lawyer){
            $avatar = $lawyer->user->avatar;
            $is_favorite = Favorite::where('lawyer_id', $lawyer->id)->where('user_id', auth()->id())->exists();
            $categories = Category::whereIn('id', json_decode($lawyer->service_ids))->pluck('name');
            // if ($avatar) {
            //     $avatar = asset('storage/' . $avatar);
            // }
            return [
                'id' => $lawyer->id,
                'id_number' => $lawyer->id_number,
                'first_name' => $lawyer->user->first_name,
                'last_name' => $lawyer->user->last_name,
                'full_name' => $lawyer->user->full_name,
                'email' => $lawyer->user->email,
                'phone' => $lawyer->phone,
                'avatar' => $avatar,
                'state' => $lawyer->state,
                'languages' => $lawyer->languages,
                'experience' => $lawyer->experience,
                'categories' => is_string($categories) ? json_decode($categories) : $categories,
                'category_ids' => $lawyer->service_ids,
                'role' => $lawyer->user->role,
                'is_favorite' => $is_favorite,
                'created_at' => $lawyer->created_at->format('d M Y'),
                'web_link' => $lawyer->web_link,
                'linkedin_url' => $lawyer->linkedin_url,
            ];
        });

        return response()->json([
            'success' => true,
            'lawyers' => $lawyers
        ], 200);
    }
}
