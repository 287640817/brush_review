
@extends('admin.layouts.layout')

@section('title', '首页')

@section('css')
  <link href="{{loadEdition('/admin/css/pxgridsicons.min.css')}}" rel="stylesheet" />
@endsection
@section('content')
  <div class="row state-overview">
    <div class="ibox float-e-margins">
      <div class="ibox-title">
        <h5>您的分享地址</h5>

      </div>
      <div class="ibox-content">
        <p><i class="fa fa-send-o"></i>  <span id="url">{{ config('app.url') }}?u={{ request()->user()->hashid }}</span>  <button   onClick="copyUrl()" class="btn btn-info " type="button"><i class="fa fa-paste"></i> 点击复制</button></p>
      </div>
    </div>
  </div>
@stop

@section('footer-js')
  <script src="{{loadEdition('/js/plugins/layer/layer.min.js')}}"></script>
  <link href="{{loadEdition('/js/plugins/layer/skin/layer.css')}}" rel="stylesheet">
  <script type="text/javascript">
      function copyUrl()
      {
          var Url=document.getElementById("url").innerText;
          var oInput = document.createElement('input');
          oInput.value = Url;
          document.body.appendChild(oInput);
          oInput.select(); // 选择对象
          document.execCommand("Copy"); // 执行浏览器复制命令
          oInput.className = 'oInput';
          oInput.style.display='none';
          layer.msg('复制成功');
      }
  </script>
@endsection