<?php

namespace App\Services;

use App\Repositories\CommentsRepository;


class CommentsService
{

    protected $commentsRepository;


    public function __construct(CommentsRepository $commentsRepository)
    {
        $this->commentsRepository = $commentsRepository;
    }

    public function destory($id){
        $record_detail = $this->commentsRepository->ById($id);
        if(empty($record_detail))
        {
            flash('删除失败')->error()->important();

            return redirect()->route('comment.index');
        }

        $record_detail->delete();

        flash('删除成功')->success()->important();

    }

    public function publish($publish, $id){
        $record_detail = $this->commentsRepository->ById($id);
        if(empty($record_detail))
        {
            flash('操作失败')->error()->important();

            return redirect()->route('comment.publish');
        }

        $record_detail->update(['is_publish'=>$publish]);

        flash('更新成功')->success()->important();
    }

    public function update($request, $id){
        $record_detail = $this->commentsRepository->ById($id);
        $data = $request->all();
        if(empty($record_detail))
        {
            flash('操作失败')->error()->important();
            return;
        }
        $record_detail->update($data);
        flash('更新成功')->success()->important();
    }

}