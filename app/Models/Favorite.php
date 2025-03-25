<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Favorite extends Model
{
    protected $fillable = ['user_id', 'lawyer_id'];
    protected $appends = ['is_favorite'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function lawyer()
    {
        return $this->belongsTo(Lawyer::class);
    }

    //is favorite attribute
    public function getIsFavoriteAttribute()
    {
        return true;
    }
}
