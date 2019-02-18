<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/2/18 0018
 * Time: 14:20
 */
namespace App\Repositories;


class BaseRepository{

    public function getRbacModel($model_name, $model){
        if(request()->user()->isAdmin()){
            return new $model();
        }
        return request()->user()->$model_name();
    }

}