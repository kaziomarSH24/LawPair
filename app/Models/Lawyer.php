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
        'city',
        'web_link',
        'linkedin_url',
        'id_number',
        'zipcode',
        'schedule',
    ];

    protected $casts = [
        'schedule' => 'array',
    ];

    protected $appends = ['name'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function favorites()
    {
        return $this->hasMany(Favorite::class);
    }

    //attributes
    public function getNameAttribute()
    {
        return $this->user->first_name . ' ' . $this->user->last_name;
    }
}
