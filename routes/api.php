<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\LegalResourcesController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Lawyer\LawyerController;
use Illuminate\Container\Attributes\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\User\FavoriteListController;
use App\Http\Controllers\User\UserController;

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
    //dashboard
    Route::controller(DashboardController::class)->group(function(){
        Route::get('/dashboard', 'dashboard');
    });
    Route::controller(AdminController::class)->group(function(){
        //get admin profile
        Route::get('/profile', 'adminProfile');
        //category routes
        Route::get('/categories', 'getCategories')->withoutMiddleware(['jwt.auth', 'admin']);
        Route::get('/categories/{id}', 'showCategory')->withoutMiddleware(['jwt.auth', 'admin']);
        Route::post('/store-category', 'storeCategory');
        Route::put('/update-category/{id}', 'updateCategory');
        Route::delete('/delete-category/{id}', 'deleteCategory');

        //manage users
        Route::get('/users', 'getAllUsers');
        Route::delete('/user/{id}','deleteUser');

    });

    //legal resources controller
    Route::controller(LegalResourcesController::class)->group(function(){
        Route::get('/legal-resources', 'getAllResources')->withoutMiddleware(['jwt.auth', 'admin']);
        Route::get('/legal-resources/{id}', 'showResource')->withoutMiddleware(['jwt.auth', 'admin']);
        Route::post('/store-legal-resource', 'storeResource');
        Route::put('/update-legal-resource/{id}', 'updateResource');
        Route::delete('/delete-legal-resource/{id}', 'deleteResource');
    });

    //settings controller
    Route::controller(SettingController::class)->group(function(){
        Route::post('/update-about', 'updateAbout');
        Route::get('/about', 'getAbout');
        Route::post('/update-disclaimer', 'updateDisclaimer');
        Route::get('/disclaimer', 'getDisclaimer');
    });
});

/**
 * Lawyer Routes
 */
Route::group(['prefix' => 'lawyer', 'middleware' => ['jwt.auth', 'lawyer']], function(){
    Route::controller(LawyerController::class)->group(function(){
        Route::post('/update-profile', 'updateLawyerProfile');
        Route::get('/profile', 'getLawyerProfile');
        Route::get('/all-lawyers','getLawyers');
    });
});

/**
 * Home page Routes
 */

// Route::controller(HomeController::class)->group(function(){
//     //find lawyer
//     Route::get('/find-lawyers', 'findLawyers')->middleware('jwt.auth');
//     Route::get('/lawyer/{id}', 'getLawyerProfile')->middleware('jwt.auth');
// });

Route::middleware('guest')->group(function(){
    Route::get('/find-lawyers', [HomeController::class, 'findLawyers']);
    Route::get('/lawyer/{id}', [HomeController::class, 'getLawyerProfile']);
    Route::get('/search-lawyer', [HomeController::class, 'searchLawyer']);
});

 /**
  * FavoriteList Routes
  */
Route::group(['prefix' => 'user', 'middleware' => ['jwt.auth']], function(){
    Route::controller(FavoriteListController::class)->group(function(){
        Route::get('/favorite-list', 'getFavoriteList');
        Route::post('/mark-as-favorite', 'markAsFavorite');
        Route::delete('/unmark-as-favorite/{id}', 'destroy');
    });
    Route::get('profile', [UserController::class, 'getProfile']);
    Route::get('/{id}', [UserController::class, 'getUserById']);
});
