<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/2/18 0018
 * Time: 14:20
 */
namespace App\Repositories;


class BaseRepository{

    public function getRbacModel($model){
        if(request()->user()->isAdmin()){
            return new $model();
        }
        return $model::where('admin_id', request()->user()->id);
    }

}