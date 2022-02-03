<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGithubUserListsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('github_user_lists', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('github_id');
            $table->unsignedBigInteger('github_user_id');
            $table->integer('repo_count')->default(0);
            $table->integer('followers_count')->nullable();
            $table->integer('popularity')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('github_user_lists');
    }
}
