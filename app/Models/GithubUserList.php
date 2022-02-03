<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GithubUserList extends Model
{
    use HasFactory;

    protected $guarded = [ 'id' ];

    public function user()
    {
        return $this->hasOne(GithubUser::class, 'id', 'github_user_id');
    }

    public function repos()
    {
        return $this->hasMany(GithubUserRepo::class, 'github_user_id', 'github_user_id');
    }
}
