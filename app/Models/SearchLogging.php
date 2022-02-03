<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SearchLogging extends Model
{
    use HasFactory;
    protected $guarded = [ 'id' ];

    protected $casts = [
        'request'   =>  'array',
        'result'    =>  'array',
    ];
}
