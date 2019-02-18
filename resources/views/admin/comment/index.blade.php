@extends('admin.layouts.layout')
@section('content')
<div class="row">
    <div class="col-sm-12">
        <div class="ibox-title">
            <h5>评论管理</h5>
        </div>
        <div class="ibox-content">
            <a class="menuid btn btn-primary btn-sm" href="javascript:history.go(-1)">返回</a>
            <a href="{{route('comment.create')}}" link-url="javascript:void(0)"><button class="btn btn-primary btn-sm" type="button"><i class="fa fa-plus-circle"></i> 添加评论</button></a>
            <form method="post" action="{{route('comment.index')}}" name="form">
                <table class="table table-striped table-bordered table-hover m-t-md">
                    <thead>
                    <tr>
                        <th class="text-center" width="100">ID</th>
                        <th class="text-center" width="150">添加人</th>
                        <th>评论内容</th>
                        <th class="text-center" width="150">创建时间</th>
                        <th class="text-center" width="80">是否发布</th>
                        <th class="text-center" width="80">是否领取</th>
                        <th class="text-center" width="200">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($comments as $k => $item)
                        <tr>
                            <td class="text-center">{{$item->id}}</td>
                            <td class="text-center">{{$item->admin->name}}</td>
                            <td>{{$item->content}}</td>
                            <td class="text-center">{{$item->created_at}}</td>
                            @php
                                App\Presenters\PresentersFactory\CommentsPublishPresentersFactory::bind($item->is_publish)
                            @endphp

                            @inject('publish', "App\Presenters\PresentersInterFace\CommentsPublishPresentersInterface")
                            <td class="text-center">{{$publish->showPublish($item->is_publish)}}</td>
                            <td class="text-center">{{ $item->present()->isUsed }}</td>
                            <td class="text-center">
                                <div class="btn-group">
                                    <a href="{{route('comment.edit',$item->id)}}">
                                        <button class="btn btn-primary btn-xs" type="button"><i class="fa fa-paste"></i> 修改</button>
                                    </a>
                                    @if($item->is_publish == 1)
                                            <a href="{{route('comment.publish',['publish'=>2,'id'=>$item->id])}}"><button class="btn btn-info btn-xs" type="button"><i class="fa fa-warning"></i> 发布</button></a>
                                    @else
                                            <a href="{{route('comment.publish',['publish'=>1,'id'=>$item->id])}}"><button class="btn btn-warning btn-xs" type="button"><i class="fa fa-warning"></i> 不发布</button></a>
                                    @endif
                                    <a href="{{route('comment.delete',$item->id)}}"><button class="btn btn-danger btn-xs" type="button"><i class="fa fa-trash-o"></i> 删除</button></a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                {{$comments->links()}}
            </form>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
@endsection