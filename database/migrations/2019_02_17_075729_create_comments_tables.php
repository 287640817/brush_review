<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommentsTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->increments('id');
            $table->text('content')->comment('评论内容');
            $table->boolean('is_publish')->default(1)->comment('是否发布，0未发布，1已发布');
            $table->boolean('is_used')->default(0)->comment('是否领取，0未领取，1已领取');
            $table->timestamps();
        });
        DB::statement("ALTER TABLE `comments` comment '评论表'");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('comments');
    }
}
