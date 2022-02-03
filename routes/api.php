<?php

use App\Http\Controllers\GithubController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::prefix('github')->controller(GithubController::class)->group(function() {
    Route::prefix('users')->group( function() {
        Route::GET('', 'getUsers');
        Route::GET('popular', 'getPopularUser');
        Route::GET('{githubId}', 'getUser');
        Route::GET('{githubId}/repos', 'getUserRepos');
    });
});