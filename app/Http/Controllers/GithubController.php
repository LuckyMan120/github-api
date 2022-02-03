<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserListResource;
use App\Http\Resources\UserResource;
use App\Http\Services\GithubService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class GithubController extends Controller
{
    /**
     * store request instance
     * @var Request
     */
    protected Request $request;

    protected GithubService $service;

    // github api
    protected $githubBaseUrl = 'https://api.github.com';

    public function __construct(Request $request, GithubService $service)
    {
        $this->request = $request;
        $this->service = $service;
    }

    /**
     * get github users
     * @method GET
     * @link /github/users
     */
    public function getUsers()
    {
        $url = "{$this->githubBaseUrl}/search/users";
        $query = [
            'q' =>  "{$this->request->name} in:login",
            'per_page'  =>  3,
            'page'  =>  $this->request->page
        ];
        $users = $this->service->githubHttp($url, $query)->object();

        $lists = $this->service->storeUsers($users->items);

        return UserListResource::collection($lists);
    }

    /**
     * @method GET
     * @link /github/users/{githubId}
     */
    public function getUser($githubId)
    {
        $url = "{$this->githubBaseUrl}/user/{$githubId}";
        $user = $this->service->githubHttp($url)->object();
        $this->service->storeUsers([$user]);
        $user = $this->service->findUser($githubId);
        return new UserResource($user);
    }

    /**
     * @method GET
     * @link /github/users/popular
     */
    public function getPopularUser()
    {
        $users = $this->service->findPopularUser([]);
        return UserListResource::collection($users);
    }

    /**
     * @method GET
     * @link /github/users/{githubId}/repos
     */
    public function getUserRepos($githubId)
    {
        $url = "{$this->githubBaseUrl}/user/{$githubId}";
        $user = $this->service->githubHttp($url)->object();
        $this->service->storeUsers([$user]);
        $user = $this->service->findUser($githubId);
        $repos = $user->repos;
        if ( $this->request->name ) $repos = $user->repos()->ofName($this->request->name)->get();
        return $repos;
    }
}
