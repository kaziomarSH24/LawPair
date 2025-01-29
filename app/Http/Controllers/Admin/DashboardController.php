<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    //dashboard
    // public function dashboard(){
    //     try {
    //     $dashboard = User::selectRaw('count(id) as total_users')
    //         ->selectRaw('count(case when role = "user" then 1 end) as total_clients')
    //         ->selectRaw('count(case when role = "lawyer" then 1 end) as total_lawyers')
    //         ->first();

    //     return response()->json([
    //         'success' => true,
    //         'dashboard' => $dashboard
    //     ], 200);
    //    } catch (\Exception $e) {
    //     return response()->json([
    //         'success' => false,
    //         'message' => 'Something went wrong!',
    //         'error' => $e->getMessage()
    //     ], 500);
    //    }
    // }

    public function dashboard(Request $request)
    {
        try {
            $year = $request->input('year', date('Y'));
            $usersCount = User::selectRaw('count(id) as total_users')
            ->selectRaw('count(case when role = "user" then 1 end) as total_clients')
            ->selectRaw('count(case when role = "lawyer" then 1 end) as total_lawyers')
            ->first();
            $dashboardData = User::selectRaw('
                    MONTH(created_at) as month,
                    COUNT(id) as total_users,
                    COUNT(CASE WHEN role = "user" THEN 1 END) as total_clients,
                    COUNT(CASE WHEN role = "lawyer" THEN 1 END) as total_lawyers
                ')
                ->whereYear('created_at', $year)
                ->groupBy('month')
                ->orderBy('month', 'asc')
                ->get();


            $months = collect(range(1, 12))->map(function ($month) use ($dashboardData) {
                $data = $dashboardData->where('month', $month)->first();
                return [
                    'month' => date('F', mktime(0, 0, 0, $month, 10)),
                    'total_users' => $data->total_users ?? 0,
                    'total_clients' => $data->total_clients ?? 0,
                    'total_lawyers' => $data->total_lawyers ?? 0,
                ];
            });

            return response()->json([
                'success' => true,
                'usersCount'=> $usersCount,
                'data' => $months
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
