<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/2/17 0017
 * Time: 18:16
 */
namespace App\Presenters\PresentersFactory;
use Illuminate\Support\Facades\App;
use App\Presenters\PresentersInterFace\CommentsPublishPresentersInterface as ComPubPreInterface;

class CommentsPublishPresentersFactory{
    public static function  bind(string $is_publish){
        App::bind(ComPubPreInterface::class,
            'App\Presenters\CommentsPublish\CommentsPublish_' . $is_publish);
    }
}