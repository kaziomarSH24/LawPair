<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\Lawyer\LawyerController;
use Illuminate\Container\Attributes\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');

//authcontroller
Route::controller(AuthController::class)->group(function(){
    Route::post('/login', 'login');
    Route::post('/register', 'register');
    Route::get('/logout', 'logout')->middleware('jwt.auth');
    Route::post('/verify-email', 'verifyEmail');
    Route::post('/resent-otp', 'resendOtp');
    Route::post('reset-password', 'resetPassword');

    //social login
    Route::get('/auth/google', 'loginWithGoogle')
        ->name('google.login');

    //social login callback
    Route::get('/auth/google/callback', 'googleLoginCallback')
        ->name('google.login.callback');
});

Route::group(['prefix' => 'lawyer', 'middleware' => ['jwt.auth', 'lawyer']], function(){
    Route::controller(LawyerController::class)->group(function(){
        Route::post('/update-profile', 'updateLawyerProfile');
        Route::get('/profile', 'getLawyerProfile');
    });
});
