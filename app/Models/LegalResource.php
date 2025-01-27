<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LegalResource extends Model
{
    protected $fillable = ['title', 'description', 'image'];
}
