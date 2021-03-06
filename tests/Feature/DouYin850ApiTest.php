<?php

namespace Tests\Feature;

use App\Helpers\Douyin850Api;
use GuzzleHttp\Client;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class DouYin850ApiTest extends TestCase
{

    public function testTaskInfo()
    {
        $api = new Douyin850Api();

        $cookie = 'sessionid=9fd66b0ff906860703d031a73649a5f4';
        $task_id = '1661142418640983';

        $info = $api->getTaskInfo($task_id, $cookie);

        $this->assertTrue($info['status_code'] === 0 && isset($info['ad_info']) && isset($info['ad_stat']));
    }

    public function testUpdateSubPid()
    {
        $api = new Douyin850Api();

        $cookie = 'sessionid=967d3599c0c031a3dcf09e75ad13b335';
        $subPid = 'mm_978970146_1395500105_110135500027';

        $info = $api->updateSubPid($subPid, $cookie);

        $this->assertTrue($info['status_code'] === 0);
    }
}
