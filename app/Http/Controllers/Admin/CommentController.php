<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests\Admin\AddCommentsRequest;
use App\Repositories\CommentsRepository as comm;
use App\Services\CommentsService;
use App\Http\Requests\Admin\UpdateCommentsRequest;

class CommentController extends BaseController
{

    protected $commentsRepository;
    protected $commentsService;

    public function __construct(comm $commentsRepository, CommentsService $commentsService){
        $this->commentsRepository = $commentsRepository;
        $this->commentsService = $commentsService;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $comments = $this->commentsRepository->getComments();
//        CommentsPublishPresentersFactory::bind()
        return view('admin.comment.index', compact('comments'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.comment.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AddCommentsRequest $request)
    {
        $this->commentsRepository->create($request->all());
        flash('添加评论成功')->success()->important();
        return redirect()->route('comment.index');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $comments = $this->commentsRepository->ById($id);
        return view('admin.comment.edit', compact('comments'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCommentsRequest $request, $id)
    {
        $this->commentsService->update($request, $id);
        return redirect()->route('comment.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $this->commentsService->destory($id);

        return redirect()->route('comment.index');
    }

    public function publish($publish, $id){
        $this->commentsService->publish($publish, $id);
        return redirect()->route('comment.index');
    }
}
