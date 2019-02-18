<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/2/18 0018
 * Time: 15:18
 */


use Laracasts\Presenter\Presenter;
use Illuminate\Support\HtmlString;

class CommentsPresenter extends Presenter {

    public function isUsed(){
        $html = $this->is_used ? '<span class="text-navy">已领取</span>' : '<span class="text-danger">未领取</span>';
        return new HtmlString($html);
    }
}