<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserListResource extends JsonResource
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
            'id'    =>  $this->github_id,
            'repo_count'    =>  $this->repo_count,
            'followers_count'   =>  $this->followers_count,
            'popularity'    =>  $this->popularity,
            // 'user'  =>  $this->whenLoaded('user', function() {
            //     return new UserResource($this->user);
            // })
        ];
    }
}
