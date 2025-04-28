<?php
namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Laravel\Socialite\Facades\Socialite;
use Tymon\JWTAuth\Facades\JWTAuth;

class AuthController extends Controller
{

    /**
     * Register a User
     */

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'role'       => 'required|string',
            'first_name' => 'required|string',
            'last_name'  => 'required|string',
            'location'   => 'nullable|string',
            'email'      => 'required|string|email|unique:users',
            'password'   => 'required|string|confirmed|min:8',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => $validator->errors()->first(),
            ]);
        }

        $data = [
            'name'  => $request->first_name,
            'email' => $request->email,
        ];

        //send otp
        $data                = sentOtp($data, 5);
        $user                = new User();
        $user->first_name    = $request->first_name;
        $user->last_name     = $request->last_name;
        $user->phone         = $request->phone;
        $user->email         = $request->email;
        $user->role          = $request->role;
        $user->password      = $request->password;
        $user->otp           = $data['otp'];
        $user->otp_expire_at = $data['otp_expire_at'];
        $user->save();

        return response()->json([
            'success' => true,
            'message' => 'User created successfully! Please check your email for OTP!',
        ]);
    }

    /**
     * Login a User
     */
    // public function login(Request $request)
    // {
    //     $validator = Validator::make($request->all(), [
    //         'email' => 'required|string|email|',
    //         'password' => 'required|string|min:6',
    //     ]);
    //     if ($validator->fails()) {
    //         return response()->json($validator->errors());
    //     }

    //     if (!$token = JWTAuth::attempt($validator->validated())) {
    //         return response()->json([
    //             'success' => false,
    //             'message' => 'Invalid email or password!'
    //         ]);
    //     } else {
    //         $user = Auth::user();
    //         if ($user->email_verified_at == null) {
    //             return response()->json([
    //                 'success' => false,
    //                 'message' => 'Please verify your email address!',
    //             ]);
    //         }
    //     }

    //     return $this->responseWithToken($token);
    // }
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'role'     => 'nullable|string',
            'email'    => 'required|string|email|',
            'password' => 'required|string|min:6',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => $validator->errors()->first(),
            ]);
        }
        // if($request->)
        if ($request->role) {
            $user = User::where('email', $request->email)->where('role', $request->role)->first();
        } else {
            $user = User::where('email', $request->email)->first();
        }
        if (! $user) {
            return response()->json([
                'success' => false,
                'message' => 'Invalid email or password!',
            ]);
        }

        if (! $token = JWTAuth::attempt($validator->validated())) {
            return response()->json([
                'success' => false,
                'message' => 'Invalid email or password!',
            ]);
        } else {
            $user = Auth::user();
            if ($user->email_verified_at == null) {
                return response()->json([
                    'success' => false,
                    'message' => 'Please verify your email address!',
                ]);
            }
        }

        return $this->responseWithToken($token);
    }

    /**
     * Verify account
     */
    public function verifyEmail(Request $request)
    {
        if (isset($request->otp)) {
            $user = User::where('otp', $request->otp)->first();
            if ($user) {
                if ($user->otp_expire_at < Carbon::now()) {
                    return response()->json([
                        'success' => false,
                        'message' => 'OTP has expired! Please request for a new OTP!',
                    ], 401);
                }
                $user->email_verified_at = Carbon::now();
                $user->otp               = null;
                $user->otp_expire_at     = null;
                $user->save();

                $token = JWTAuth::fromUser($user);

                return $this->responseWithToken($token, 'Email verified successfully!');
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Invalid OTP!',
                ], 401);
            }
        } else {
            return response()->json([
                'success' => false,
                'message' => 'OTP is required!',
            ], 401);
        }
    }

    /**
     * Logout a User
     */
    public function logout()
    {
        try {
            JWTAuth::invalidate(JWTAuth::getToken());
            return response()->json([
                'success' => true,
                'message' => 'User logged out successfully!',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong!',
            ]);
        }
    }

    /**
     * Response with Token
     */
    public function responseWithToken($token, $msg = null)
    {
        return response()->json([
            'success'      => true,
            'message'      => $msg ?? 'User logged in successfully!',
            'access_token' => $token,
            'token_type'   => 'bearer',
            'expires_in'   => JWTAuth::factory()->getTTL() * 600000000,
            'user'         => Auth::user(),
        ]);
    }

    /**
     * resend OTP // also using for forgot password
     */
    public function resendOtp(Request $request)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'email' => 'required|string|email',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $user = User::where('email', $request->email)->first();
        if ($user) {
            $data = [
                'name'  => $user->name,
                'email' => $user->email,
            ];
            $data                = sentOtp($data, 5);
            $user->otp           = $data['otp'];
            $user->otp_expire_at = $data['otp_expire_at'];
            $user->save();

            return response()->json([
                'success' => true,
                'message' => 'OTP sent successfully! Please check your email!',
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'User not found!',
            ]);
        }
    }

    /**
     * reset password
     */
    public function resetPassword(Request $request)
    {
        $user = User::where('email', $request->email)->first();
        if ($user) {
            $validator = Validator::make($request->all(), [
                'password' => 'required|string|confirmed|min:6',
            ]);
            if ($validator->fails()) {
                return response()->json($validator->errors());
            }
            $user->password      = Hash::make($request->password);
            $user->otp           = null;
            $user->otp_expire_at = null;
            $user->save();

            return response()->json([
                'success' => true,
                'message' => 'Password reset successfully!',
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Unauthorized user!',
            ], 401);
        }
    }

    /**
     * Update password
     */
    public function updatePassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'old_password' => 'required|string',
            'password'     => 'required|string|confirmed|min:8',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $user = Auth::user();
        if (Hash::check($request->old_password, $user->password)) {
            $user->password = Hash::make($request->password);
            $user->save();
            return response()->json([
                'success' => true,
                'message' => 'Password updated successfully!',
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Invalid old password!',
            ]);
        }
    }

    //update profile
    public function updateProfile(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'first_name' => 'required|string',
            'last_name'  => 'required|string',
            'phone'      => 'required|string|unique:users,phone,' . Auth::id(),
            'avatar'     => 'nullable|image|mimes:jpeg,png,jpg| max:2048',
            'address'    => 'required|string',
        ],
            [
                'avatar.max' => 'The avatar must be less than 2MB.',
            ]
        );
        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => $validator->errors()->first(),
            ]);
        }

        $user = Auth::user();

        // Check update limit for lawyer
        if ($user->role == 'lawyer') {

            $currentWeekStart = now()->startOfWeek();
            $currentWeekEnd   = now()->endOfWeek();
            $lastUpdated      = $user->last_updated_at ? Carbon::parse($user->last_updated_at) : null;

            if ($lastUpdated && $lastUpdated->between($currentWeekStart, $currentWeekEnd)) {
                if ($user->update_count >= 2) {
                    return response()->json([
                        'success' => false,
                        'message' => 'You can only update your profile twice a week.',
                    ], 400);
                }
            } else {
                $user->update_count = 0;
            }
            $user->update_count += 1;
            $user->last_updated_at = now();
        }
        $user->first_name = $request->first_name;
        $user->last_name  = $request->last_name;
        $user->phone      = $request->phone;
        $user->address    = $request->address;

        if ($request->hasFile('avatar')) {

            if (! empty($user->avatar)) {
                $old_avatar = $old_avatar = str_replace('/storage/', '', parse_url($user->avatar)['path']);
                if (Storage::disk('public')->exists($old_avatar)) {
                    Storage::disk('public')->delete($old_avatar);
                }
            }

            $avatar       = $request->file('avatar');
            $user->avatar = $avatar->store('uploads/avatars', 'public');
        }
        $user->save();

        return response()->json([
            'success' => true,
            'message' => 'Profile updated successfully!',
            'user'    => $user,
        ]);
    }

    //social login with google
    public function loginWithGoogle(Request $request)
    {
        return Socialite::driver('google')->stateless()->redirect();
    }

    //social login callback
    public function googleLoginCallback()
    {
        try {
            $user    = Socialite::driver('google')->stateless()->user();
            $is_user = User::where('email', $user->getEmail())->first();
            if ($is_user) {
                $token = JWTAuth::fromUser($is_user);
                return response()->json([
                    'success' => true,
                    'message' => 'User logged in successfully!',
                    'token'   => $token,
                    'user'    => $is_user,
                ]);
            }
            $user = User::firstOrCreate([
                'email' => $user->email,
            ], [
                'first_name' => $user->user['given_name'],
                'last_name'  => $user->user['family_name'],
                'email'      => $user->email,
                'password'   => Hash::make($user->getName() . '@' . $user->getId()),
                'avatar'     => $user->avatar,
                'google_id'  => $user->id,
            ]);

            $token = JWTAuth::fromUser($user);

            return response()->json([
                'success' => true,
                'message' => 'User created successfully!',
                'token'   => $token,
                'user'    => $user,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong!',
                'error'   => $e->getMessage(),
            ]);
        }
    }
}
