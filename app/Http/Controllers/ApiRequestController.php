<?php

namespace App\Http\Controllers;

use App\ApiRequest;
use App\Http\Requests\ApiRequestRequest;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class ApiRequestController extends Controller
{
    public function index(ApiRequest $apiRequest)
    {
        $apiRequests = $apiRequest->newQuery()
            ->get();
        return view('apiRequest.index', compact('apiRequests'));
    }

    public function create(ApiRequest $apiRequest)
    {
        return view('apiRequest.create',compact('apiRequest'));
    }

    public function edit(ApiRequest $apiRequest)
    {
        return view('apiRequest.create',compact('apiRequest'));
    }

    public function store(ApiRequestRequest $request)
    {
        $apiRequest = ApiRequest::query()->create($request->all());

        return redirect()
            ->route('apiRequests.index')
            ->with(['alert' => [
                'type' => 'success',
                'content' => '创建成功'
            ]]);
    }

    public function update(ApiRequestRequest $request,ApiRequest $apiRequest)
    {
        $apiRequest->state = 'none';
        $apiRequest->fill($request->all())->save();

        return redirect()
            ->route('apiRequests.index')
            ->with(['alert' => [
                'type' => 'success',
                'content' => '编辑成功'
            ]]);
    }

    public function getGorgon(ApiRequest $apiRequest)
    {
        $decodeUrl = urlencode($apiRequest->url);
        $client = new Client();

        $request = $client->request('GET', '172.24.1.255:46657/mas?url=' . $decodeUrl);

        return [
            'status' => 1,
            'data' => $request->getBody()->getContents(),
            'decodeUrl' => $decodeUrl
        ];
    }

    public function test(Request $request, ApiRequest $apiRequest)
    {
        $gorgon = $request->query('gorgon');

        if (is_string($gorgon)) {
            $gorgon = json_decode($gorgon, 1);
        }

        $url = Arr::get($gorgon, 'url');
        $khronos = Arr::get($gorgon, 'khronos');
        $gorgon = Arr::get($gorgon, 'gorgon');

        if (!$url || !$khronos || !$gorgon) {


            $apiRequest->state = 'err';
            $apiRequest->save();

            return [
                'status' => 0,
                'msg' => '参数异常',
                'data' => $gorgon
            ];
        }

        $client = new Client();

        $type = $apiRequest->type;
        $originUrl = $apiRequest->url;
        $header = [
            'User-Agent' => 'com.ss.android.ugc.aweme/570 (Linux; U; Android 8.1.0; zh_CN; Redmi 6A; Build/O11019; Cronet/58.0.2991.0)',
            'X-Khronos' => $khronos,
            'X-Gorgon' => $gorgon,
        ];

        $request = $client->request($type, $url, [
            'verify' => false,
            'headers' => $header
        ]);

        $res = json_decode($request->getBody()->getContents(), 1);

        $apiRequest->state = 'suc';
        $apiRequest->save();

        return [
            'status' => 1,
            'data' => compact('res', 'header', 'url', 'type', 'originUrl')
        ];
    }
}
