<?php

namespace App\Http\Services;

use App\Models\GithubUser;
use App\Models\GithubUserList;
use App\Models\SearchLogging;
use Exception;
use Illuminate\Support\Facades\Http;

class GithubService
{
    // github api
    protected $githubBaseUrl = 'https://api.github.com';

    public function findUser($githubId)
    {
        return GithubUserList::where('github_id', $githubId)->with([
            'user', 'repos'
        ])->first();
    }

    public function findPopularUser(array $filter)
    {
        return GithubUserList::orderBy('popularity', 'DESC')->take(3)->get();
    }

    public function storeUsers($users)
    {
        $newUsers = [];
        foreach( $users as $user ) {
            $newUsers[] = [
                'id'    =>  $user->id,
                'url'   =>  $user->url,
                'repos_url' =>  $user->repos_url
            ];
        }

        $lists = [];
        foreach($newUsers as $user ) {
            $lists[] = $this->updateUserProfile($user['id'], $user['url']); // update user profile
            $this->updateUserPopularity($user['id'], $user['repos_url']); // update user popularity
        }

        $this->createSearchLogging($lists); // search logging
        return $lists;
    }

    public function updateUserPopularity(int $userId, string $reposUrl)
    {
        $user = $this->findUser($userId);
        if ( $user && $user->popularity ) return $user;
        $userRepos = $this->githubHttp($reposUrl)->object();
        $popularity = 0;
        foreach( $userRepos as $repo ) {
            $popularity = $popularity + $repo->stargazers_count;
            $this->updateUserRepo($userId, $repo); // update user repo 
        }
        $user->update([
            'popularity'    =>  $popularity
        ]);
    }

    private function updateUserProfile(int $userId, string $url)
    {
        $user = $this->findUser($userId);
        if ( $user ) return $user;
        $userProfile = $this->githubHttp($url)->object();
        $user = GithubUser::create([
            'username'  =>  $userProfile->login,
            'email' =>  $userProfile->email,
            'location'  =>  $userProfile->location,
            'join_at'   =>  $userProfile->created_at,
            'followers_count'   =>  $userProfile->followers,
            'following_count'   =>  $userProfile->following,
            'bio'   =>  $userProfile->bio,
            'avatar_url'    => $userProfile->avatar_url
        ]);
        $user->list()->create([
            'github_id' =>  $userProfile->id,
            'repo_count'    =>  $userProfile->public_repos,
            'followers_count'   =>  $userProfile->followers
        ]);
        return $user->list;
    }

    private function updateUserRepo(int $userId, $repo)
    {
        $user = $this->findUser($userId);
        $user->repos()->updateOrCreate([
            'github_user_id' =>  $user->github_user_id,
            'name'  =>  $repo->full_name
        ],[
            'name'  =>  $repo->full_name,
            'stars' =>  $repo->stargazers_count,
            'forks' =>  $repo->forks
        ]);
    }

    private function createSearchLogging(array $result)
    {
        SearchLogging::create([
            'request'   =>  request()->all(),
            'result'    =>  $result,
            'user'  =>  request()->ip()
        ]);
    }

    public function githubHttp($url, $query = null)
    {
        try{
            $response = Http::get($url, $query);
            if ( $response->status() != 200 )
                return throw new Exception($response->object()->message );
            return $response;
        }catch(Exception $e) {
            throw new Exception('No response was received from the github server.please try again later');
        }
    }
}
