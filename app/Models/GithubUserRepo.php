<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GithubUserRepo extends Model
{
    use HasFactory;

    protected $guarded = [ 'id' ];

    public function scopeOfName($query, $name)
    {
        if ( $name === null ) return $query;
        return $query->where('name', 'like', '%'.$name.'%');
    }
}
