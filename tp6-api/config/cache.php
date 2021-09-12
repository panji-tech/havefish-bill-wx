<?php

// +----------------------------------------------------------------------
// | 缓存设置
// +----------------------------------------------------------------------

return [
    // 默认缓存驱动
    'default' => env('cache.driver', 'file'),

    'stores' => [
        // redis缓存
        'redis' => [
            // 驱动方式
            'type' => 'redis',
            // 服务器地址
            'host' => env('app.host', ''),
            //  端口号
            'port'      => '6379',
            //  密码
            'password'=> "",
            'expire' => 0,
        ],
        // 将文件缓存改成reids  默认缓存为redis
        'file' => [
             // 驱动方式
             'type' => 'file',
             // 设置不同的缓存保存目录
             'path' => '../runtime/file/',
        ],
    ],
];
