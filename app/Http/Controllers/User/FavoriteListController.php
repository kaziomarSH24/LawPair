<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Favorite;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class FavoriteListController extends Controller
{
    public function getFavoriteList(Request $request)
    {
        try {
            $favoriteList = Favorite::where('user_id', auth()->id())
            ->with('lawyer.user')
            ->paginate($request->per_page ?? 10);

            $favoriteList->transform(function ($favorite) {
                $serviceIds = json_decode($favorite->lawyer->service_ids);
                $categories = Category::whereIn('id', $serviceIds)->pluck('name');
                return [
                    'id' => $favorite->id,
                    'lawyer_id' => $favorite->lawyer->id,
                    'first_name' => $favorite->lawyer->user->first_name,
                    'last_name' => $favorite->lawyer->user->last_name,
                    'email' => $favorite->lawyer->user->email,
                    'phone' => $favorite->lawyer->user->phone,
                    'address' => $favorite->lawyer->user->address,
                    'avatar' => $favorite->lawyer->user->avatar,
                    'categories' => json_decode($categories),
                    'category_ids' => $favorite->lawyer->service_ids,
                    'state' => $favorite->lawyer->state,
                    'languages' => $favorite->lawyer->languages,
                    'experience' => $favorite->lawyer->experience,
                    'is_favorite' => $favorite->is_favorite,
                    'web_link' => $favorite->lawyer->web_link,
                    'linkedin_url' => $favorite->lawyer->linkedin_url,
                    'created_at' => $favorite->lawyer->created_at->format('d M Y'),
                ];
            });

            return response()->json([
                'success' => true,
                'favoriteList' => $favoriteList
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong!',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function markAsFavorite(Request $request)
    {
        try {
            $user = auth()->user();
            $validetor = Validator::make($request->all(),[
                'lawyer_id' => 'required'
            ]);

            if ($validetor->fails()) {
                return response()->json([$validetor->errors()], 400);
            }

            // Check if the lawyer is already in the favorite list
            $favoriteList = $user->favoriteList()->where('lawyer_id', $request->lawyer_id)->first();
            // return $user->favoriteList();
            if ($favoriteList) {
                return response()->json([
                    'success' => false,
                    'message' => 'Lawyer already in the favorite list'
                ], 409);
            }

            $favoriteList = new Favorite();
            $favoriteList->user_id = $user->id;
            $favoriteList->lawyer_id = $request->lawyer_id;
            $favoriteList->save();

            return response()->json([
                'success' => true,
                'favoriteList' => $favoriteList
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong!',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        try {
            $favoriteList = auth()->user()->favoriteList()->find($id);

            if (!$favoriteList) {
                return response()->json([
                    'success' => false,
                    'message' => 'Favorite list not found'
                ], 404);
            }

            $favoriteList->delete();

            return response()->json([
                'success' => true,
                'message' => 'Favorite list deleted successfully'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong!',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
