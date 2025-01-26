<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Lawyer\LawyerController;
use Illuminate\Container\Attributes\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');

/**
 * Auth users Routes
 */
Route::controller(AuthController::class)->group(function(){
    Route::post('/login', 'login');
    Route::post('/register', 'register');
    Route::get('/logout', 'logout')->middleware('jwt.auth');
    Route::post('/verify-email', 'verifyEmail');
    Route::post('/resent-otp', 'resendOtp');
    Route::post('reset-password', 'resetPassword');

    //update user profile & password
    Route::post('/update-profile', 'updateProfile')->middleware('jwt.auth');
    Route::post('/update-password', 'updatePassword')->middleware('jwt.auth');

    //social login
    Route::get('/auth/google', 'loginWithGoogle')
        ->name('google.login');

    //social login callback
    Route::get('/auth/google/callback', 'googleLoginCallback')
        ->name('google.login.callback');
});

/**
 * Admin Routes
 */
Route::group(['prefix' => 'admin', 'middleware' => ['jwt.auth', 'admin']], function(){
    Route::controller(AdminController::class)->group(function(){
        //category routes
        Route::get('/categories', 'getCategories');
        Route::post('/store-category', 'storeCategory');
        Route::put('/update-category/{id}', 'updateCategory');
        Route::delete('/delete-category/{id}', 'deleteCategory');

        //manage users
        Route::get('/users', 'getAllUsers');
        Route::delete('/user/{id}','deleteUser');

    });
});

/**
 * Lawyer Routes
 */
Route::group(['prefix' => 'lawyer', 'middleware' => ['jwt.auth', 'lawyer']], function(){
    Route::controller(LawyerController::class)->group(function(){
        Route::post('/update-profile', 'updateLawyerProfile');
        Route::get('/profile', 'getLawyerProfile');
    });
});
