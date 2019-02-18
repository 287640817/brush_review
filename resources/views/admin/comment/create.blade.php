@extends('admin.layouts.layout')
@section('content')
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox-title">
                <h5>添加评论</h5>
            </div>
            <div class="ibox-content">
                <a class="menuid btn btn-primary btn-sm" href="javascript:history.go(-1)">返回</a>
                <a href="{{route('comment.index')}}"><button class="btn btn-primary btn-sm" type="button"><i class="fa fa-plus-circle"></i> 评论管理</button></a>
                <div class="hr-line-dashed m-t-sm m-b-sm"></div>
                <form class="form-horizontal m-t-md" action="{{ route('comment.store') }}" method="post" accept-charset="UTF-8" >
                    {!! csrf_field() !!}
                    <div class="form-group">
                        <label class="col-sm-2 control-label">评论内容：</label>
                        <div class="input-group col-sm-2">
                            <textarea class="form-control" rows="3" name="content" value="{{old('content')}}" required data-msg-required="请输入评论内容"></textarea>
                            @if ($errors->has('content'))
                                <span class="help-block m-b-none"><i class="fa fa-info-circle"></i>{{$errors->first('content')}}</span>
                            @endif
                        </div>
                    </div>
                    <div class="hr-line-dashed m-t-sm m-b-sm"></div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">是否发布：</label>
                        <div class="input-group col-sm-1">
                            <select class="form-control" name="is_publish">
                                <option value="1" @if(old('is_publish') == 1) selected="selected" @endif>发布</option>
                                <option value="2" @if(old('is_publish') == 2) selected="selected" @endif>不发布</option>
                            </select>
                            @if ($errors->has('is_publish'))
                                <span class="help-block m-b-none"><i class="fa fa-info-circle"></i>{{$errors->first('is_publish')}}</span>
                            @endif
                        </div>
                    </div>
                    <div class="hr-line-dashed m-t-sm m-b-sm"></div>
                    <div class="form-group">
                        <div class="col-sm-12 col-sm-offset-2">
                            <button class="btn btn-primary" type="submit"><i class="fa fa-check"></i>&nbsp;保 存</button>　<button class="btn btn-white" type="reset"><i class="fa fa-repeat"></i> 重 置</button>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
@endsection