<?php
/**
 * YICMS
 * ============================================================================
 * 版权所有 2014-2017 YICMS，并保留所有权利。
 * 网站地址: http://www.yicms.vip
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！
 * 不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * Created by PhpStorm.
 * Author: kenuo
 * Date: 2017/11/13
 * Time: 上午9:54
 */
namespace App\Repositories;

use App\Models\Comment;
use Illuminate\Support\Facades\Auth;

class CommentsRepository
{
    /**
     * 创建评论
     * @param array $params
     * @return mixed
     */
    public function create(array $params)
    {
        return Auth::guard('admin')->comments->create($params);
    }

    /**
     * 根据id获取评论
     * @param $id
     * @return mixed
     */
    public function ById($id)
    {
        return Auth::guard('admin')->comments->find($id);
    }

    /**
     * 获取评论列表 with ('roles')
     * @return \Illuminate\Contracts\Pagination\LengthAwarePaginator
     */
    public function getComments()
    {
        return Auth::guard('admin')->comments->paginate('10');
    }

    /**
     * 根据name查询评论资料
     * @param $content
     * @return mixed
     */
    public function ByName($content)
    {
        return Auth::guard('admin')->comments->where('content','like',"%{$content}%")->first();
    }
}