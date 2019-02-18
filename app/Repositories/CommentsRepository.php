<?php
namespace App\Repositories;
use App\Models\Comment;
use Illuminate\Http\Request;
use App\Repositories\BaseRepository;

class CommentsRepository extends BaseRepository
{

    /**
     * 创建评论
     * @param array $params
     * @return mixed
     */
    public function create($data)
    {
        return request()->user()->comments()->create($data);
    }

    /**
     * 根据id获取评论
     * @param $id
     * @return mixed
     */
    public function ById($id)
    {
        return $this->getRbacModel(Comment::class)::find($id);
    }

    /**
     * 获取评论列表
     * @return \Illuminate\Contracts\Pagination\LengthAwarePaginator
     */
    public function getComments()
    {
        return $this->getRbacModel(Comment::class)::paginate('10');
    }




}