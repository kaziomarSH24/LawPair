<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Lawyer extends Model
{
    protected $fillable = [
        'user_id',
        'service_ids',
        'practice_area',
        'experience',
        'languages',
        'state',
        'web_link',
        'schedule',
    ];

    protected $casts = [
        'schedule' => 'array',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function favorites()
    {
        return $this->hasMany(Favorite::class);
    }
}
