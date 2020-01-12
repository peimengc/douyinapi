@extends('layouts.app')

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-6">
                    <h4>抖音Api请求列表</h4>
                    <p>抖音Api请求列表</p>
                </div>
                <div class="col-md-6 text-right">
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <a href="{{ route('apiRequests.create') }}" type="button" class="btn btn-primary">新增</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 py-4">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">名称</th>
                    <th scope="col">请求方式</th>
                    <th scope="col">状态</th>
                    <th scope="col">操作</th>
                </tr>
                </thead>
                <tbody>
                @foreach($apiRequests as $apiRequest)
                    <tr>
                        <th scope="row">{{ $apiRequest->id }}</th>
                        <td>{{ $apiRequest->name }}</td>
                        <td>{{ $apiRequest->type }}</td>
                        <td>{{ $apiRequest->state }}</td>
                        <td>
                            <div class="btn-group btn-group-sm">
                                <button type="button"
                                        data-url-gorgon="{{ route('apiRequests.getGorgon',$apiRequest) }}"
                                        data-url-test="{{ route('apiRequests.test',$apiRequest) }}"
                                        class="btn btn-info action-test">测试
                                </button>
                                <a href="{{ route('apiRequests.edit',$apiRequest) }}"
                                        class="btn btn-info">编辑
                                </a>
                            </div>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection

@section('js')
    <script defer>
        $(function () {
            $('.action-test').click(function (event) {
                event.preventDefault()
                let $this = $(this), urlGorgon = $this.data('urlGorgon'), urlTest = $this.data('urlTest')
                $this.removeClass('action-test')
                $this.text('执行中...')
                $.ajax({
                    url: urlGorgon,
                    method: 'GET',
                    dataType: 'json',
                    success: function (result, status, xhr) {
                        console.log('Gorgon：', result)
                        $.ajax({
                            url: urlTest,
                            data: {
                                gorgon: result.data
                            },
                            method: 'GET',
                            dataType: 'json',
                            success: function (result, status, xhr) {
                                console.log('testContent：', result)
                                $this.text('测试完成')
                                $this.addClass('action-test')
                            }
                        })
                    }
                })
            })
        })
    </script>
@endsection
