<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Comment;
use Carbon\Carbon;
use App\Models\LingQu;

class PublicsController extends Controller
{
    public function index($u){
        $user = Admin::where('hashid', $u)->first();
        if(empty($user)){
            return ['data'=> ["data" => "访问地址错误，或者用户不存在","status" => 0]];
        }else if(!empty($user->expire_time)){
            $end_time = strtotime($user->expire_time);
            if($end_time > time()){
                return ['data'=> ["data" => "分享用户已经过期","status" => 0]];
            }
        }else{
            $ip = request()->getClientIp();
            $start_time = Carbon::today()->timestamp;
            $end_time = $start_time+(60*60*24)-1;
            $lingqu_count = LingQu::where('ip', $ip)->whereBetween('time', [$start_time, $end_time])->count();
            if($lingqu_count> 0){
                return ['data'=> ["data" => "今天您已经领取过了，请明天再来！","status" => 0]];
            }else{
                $comment_count = Comment::where('admin_id', $user->id)->where('is_publish', 1)->where('is_used', 0)->count();
                if($comment_count > 0){
                    $comment = Comment::where('admin_id', $user->id)->where('is_publish', 1)->where('is_used', 0)->inRandomOrder()->first();
                    Comment::where('id',$comment->id)->update(['is_used'=> 1]);
                    LingQu::insert(
                        ['ip' => $ip, 'time' => time()]);
                    return ['data'=> ["data" => $comment->content,"status" => 1]];
                }else {
                    return ['data'=> ["data" => "用户分享评论已经被领取完了！","status" => 0]];
                }
            }
        }
    }
}
