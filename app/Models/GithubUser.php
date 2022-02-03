<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GithubUser extends Model
{
    use HasFactory;

    protected $guarded = [ 'id' ];


    public function list()
    {
        return $this->hasOne(GithubUserList::class, 'github_user_id', 'id');
    }

    public function repos()
    {
        return $this->hasMany(GithubUserRepo::class, 'github_user_id', 'id');
    }
}
