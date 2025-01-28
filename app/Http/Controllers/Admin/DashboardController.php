<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    //dashboard
    public function dashboard(){
       try {
        $dashboard = User::selectRaw('count(id) as total_users')
            ->selectRaw('count(case when role = "user" then 1 end) as total_clients')
            ->selectRaw('count(case when role = "lawyer" then 1 end) as total_lawyers')
            ->first();

        return response()->json([
            'success' => true,
            'dashboard' => $dashboard
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
