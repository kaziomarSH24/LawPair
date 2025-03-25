<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $roles = ['user', 'lawyer'];
        $avatars = glob(public_path('img/*.*')); // Random images from public/img folder

        for ($i = 0; $i < 100; $i++) {
            $role = $roles[array_rand($roles)];
            $createdAt = now()->subDays(rand(1, 365)); // Random 2025 date

            $userId = DB::table('users')->insertGetId([
                'first_name' => fake()->firstName(),
                'last_name' => fake()->lastName(),
                'phone' => fake()->optional()->phoneNumber(),
                'email' => fake()->unique()->safeEmail(),
                'email_verified_at' => now(),
                'avatar' => count($avatars) ? 'img/' . basename($avatars[array_rand($avatars)]) : null,
                'password' => Hash::make('12345678'),
                'role' => $role,
                'created_at' => $createdAt,
                'updated_at' => $createdAt,
            ]);

            // If role is lawyer, insert data into lawyers table
            if ($role === 'lawyer') {
                DB::table('lawyers')->insert([
                    'user_id' => $userId,
                    'service_ids' => json_encode([1, 2, 3]),
                    'practice_area' => 'Riley & Associate Law Firm',
                    'experience' => rand(1, 10) . ' years',
                    'state' => 'New York',
                    'languages' => 'English',
                    'web_link' => 'http://www.websitedomain.com',
                    'schedule' => json_encode([
                        ['day' => 'saturday', 'time' => '09:00 - 17:00']
                    ]),
                    'created_at' => $createdAt,
                    'updated_at' => $createdAt,
                ]);
            }
        }
    }
}
