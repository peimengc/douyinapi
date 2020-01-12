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

                </div>
            </div>
        </div>
        <div class="col-md-12 py-4">
            @if($apiRequest->exists)
                <form action="{{ route('apiRequests.update',$apiRequest) }}" method="post">
                    @method('PUT')
                    @else
                        <form action="{{ route('apiRequests.store') }}" method="post">
                            @endif
                            @csrf
                            <div class="form-group">
                                <label for="name">请求名称：</label>
                                <input type="text" class="form-control @error('name') is-invalid @enderror" id="name"
                                       name="name"
                                       value="{{ old('name',$apiRequest->name) }}">
                                @error('name')
                                <div class="invalid-feedback">
                                    {{ $errors->first('name') }}
                                </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="url">请求地址：</label>
                                <input type="text" class="form-control @error('url') is-invalid @enderror" id="url"
                                       name="url"
                                       value="{{ old('url',$apiRequest->url) }}">
                                @error('url')
                                <div class="invalid-feedback">
                                    {{ $errors->first('url') }}
                                </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="type">请求类型：</label>
                                <select class="form-control @error('type') is-invalid @enderror" id="type" name="type">
                                    <option value="get" @if(old('type',$apiRequest->type) === 'get') selected @endif>get</option>
                                    <option value="post" @if(old('type',$apiRequest->type) === 'post') selected @endif>post</option>
                                </select>
                                @error('type')
                                <div class="invalid-feedback">
                                    {{ $errors->first('type') }}
                                </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="header">请求头：</label>
                                <textarea class="form-control @error('header') is-invalid @enderror" id="header"
                                          rows="3"
                                          name="header">{{ old('header',$apiRequest->header) }}</textarea>
                                @error('header')
                                <div class="invalid-feedback">
                                    {{ $errors->first('header') }}
                                </div>
                                @enderror
                            </div>
                            <button type="submit" class="btn btn-primary">提交</button>
                            <a href="{{ route('apiRequests.index') }}" class="btn btn-secondary">返回</a>
                        </form>
        </div>
    </div>
@endsection
