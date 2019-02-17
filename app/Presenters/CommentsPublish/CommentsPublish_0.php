<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/2/17 0017
 * Time: 18:07
 */
namespace App\Presenters\CommentsPublish;

use App\Presenters\PresentersInterFace\CommentsPublishPresentersInterface as ComPuInterface;
class CommentsPublish_0 implements ComPuInterface{
    public function showPublish($is_publish) : string {
        return '0';
    }
}