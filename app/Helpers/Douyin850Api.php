<?php


namespace App\Helpers;


use GuzzleHttp\Client;

class Douyin850Api
{
    /**
     * @var Client
     */
    public $client;

    public function __construct()
    {
        $this->client = new Client();
    }

    protected function getXg($url)
    {
        $resJson = $this->client->request('GET', '114.215.189.103:47103/api?url=' . urlencode($url))
            ->getBody()
            ->getContents();

        $resArr = json_decode($resJson, 1);

        if ($resArr['status'] === 1) {
            return $resArr;
        }

        throw new \Exception($resJson);
    }

    public function getTaskList()
    {
        $url = 'https://aweme-lq.snssdk.com/aweme/v2/douplus/ad/list/?page=1&limit=10&pay_status=0&request_tag_from=h5&os_api=23&device_type=MX6&device_platform=android&ssmix=a&iid=108510299300&manifest_version_code=850&dpi=480&version_code=850&app_name=aweme&version_name=8.5.0&ts=1584770349&openudid=fda26571d3114761&device_id=67947929528&resolution=1080*1920&os_version=6.0&language=zh&device_brand=Meizu&app_type=normal&ac=wifi&update_version_code=8502&aid=1128&channel=xiaomi&_rticket=1584770350082&mcc_mnc=46000';

        $resJson = $this->client->request('GET', $url, [
            'headers' => [
                'Cookie' => 'sessionid=e8244f93db4f2967178bae12d923ed56',
                'User-Agent' => 'com.ss.android.ugc.aweme/850 (Linux; U; Android 6.0; zh_CN; MX6; Build/MRA58K; Cronet/58.0.2991.0)',
            ]
        ])
            ->getBody()
            ->getContents();

        $resArr = json_decode($resJson, 1);

        return $resArr;
    }

    public function getTaskInfo($task_id, $cookie)
    {
        $url = 'https://aweme-lq.snssdk.com/aweme/v2/douplus/ad/';

        $query = [
            'task_id' => '1661142418640983',
            'request_tag_from' => 'h5',
            'os_api' => '23',
            'device_type' => 'MX6',
            'device_platform' => 'android',
            'ssmix' => 'a',
            'iid' => '108510299300',
            'manifest_version_code' => '850',
            'dpi' => '480',
            'version_code' => '850',
            'app_name' => 'aweme',
            'version_name' => '8.5.0',
            'ts' => '1584770901',
            'openudid' => 'fda26571d3114761',
            'device_id' => '67947929528',
            'resolution' => '1080*1920',
            'os_version' => '6.0',
            'language' => 'zh',
            'device_brand' => 'Meizu',
            'app_type' => 'normal',
            'ac' => 'wifi',
            'update_version_code' => '8502',
            'aid' => '1128',
            'channel' => 'xiaomi',
            '_rticket' => '1584770901477',
            'mcc_mnc' => '46000',
        ];

        $xg = $this->getXg($this->bindQuery($url, $query));

        $resJson = $this->client->request('GET', $xg['url'], [
            'headers' => [
                'cookie' => $cookie,
                'x-khronos' => $xg['khronos'],
                'x-gorgon' => $xg['gorgon'],
            ]
        ])
            ->getBody()
            ->getContents();

        $resArr = json_decode($resJson, 1);

        if ($resArr['status_code'] === 0) {
            return $resArr;
        }

        throw new \Exception($resJson);
    }

    public function updateSubPid($subPid, $cookie)
    {
        $url = 'https://lianmeng.snssdk.com/user/subpid/updateSubpid';

        $query = [
            'b_type_new' => '1',
            'pid_type' => 1,
            'sub_pid' => $subPid,
            'request_tag_from' => 'h5',
            'os_api' => '23',
            'device_type' => 'MX6',
            'device_platform' => 'android',
            'ssmix' => 'a',
            'iid' => '108510299300',
            'manifest_version_code' => '850',
            'dpi' => '480',
            'version_code' => '850',
            'app_name' => 'aweme',
            'version_name' => '8.5.0',
            'ts' => '1584773858',
            'openudid' => 'fda26571d3114761',
            'device_id' => '67947929528',
            'resolution' => '1080*1920',
            'os_version' => '6.0',
            'language' => 'zh',
            'device_brand' => 'Meizu',
            'app_type' => 'normal',
            'ac' => 'wifi',
            'update_version_code' => '8502',
            'aid' => '1127',
            'channel' => 'xiaomi',
            '_rticket' => '1584773858966',
            'mcc_mnc' => '46000'
        ];

        $resJson = $this->client->request('GET', $url, [
            'query' => $query,
            'headers' => [
                'cookie' => $cookie,
            ]
        ])
            ->getBody()
            ->getContents();

        $resArr = json_decode($resJson, 1);

        if ($resArr['msg'] === 'success') {
            return $resArr;
        }

        throw new \Exception($resJson);

    }

    protected function bindQuery($url, array $query)
    {
        return trim($url, '?') . '?' . http_build_query($query);
    }
}
