<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'username'  =>  $this->user->username,
            'email' =>  $this->user->email,
            'location'  =>  $this->user->location,
            'join_at'   =>  $this->user->join_at,
            'followers_count'   =>  $this->user->followers_count,
            'following_count'   =>  $this->user->following_count,
            'bio'   =>  $this->user->bio,
            'avatar_url'    =>  $this->user->avatar_url,
            'repos' =>  $this->user->repos,
        ];
    }
}
    