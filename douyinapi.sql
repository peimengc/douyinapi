-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-01-12 05:14:16
-- 服务器版本： 5.7.28-0ubuntu0.18.04.4
-- PHP 版本： 7.3.12-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `douyinapi`
--

-- --------------------------------------------------------

--
-- 表的结构 `api_requests`
--

CREATE TABLE `api_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'get',
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `api_requests`
--

INSERT INTO `api_requests` (`id`, `name`, `type`, `url`, `header`, `state`, `created_at`, `updated_at`) VALUES
(1, '测试部门1', 'get', 'www.iesdouyin.com/share/user/206302063636332', 'sdfsdf', 'err', '2019-12-30 07:25:12', '2019-12-30 08:27:47'),
(2, '评论获取', 'get', 'https://aweme-lq.snssdk.com/aweme/v2/comment/list/?aweme_id=6774743855053950223&cursor=0&count=20&address_book_access=2&gps_access=2&ts=1577610618&js_sdk_version=1.13.10&app_type=normal&manifest_version_code=570&_rticket=1577610618297&ac=wifi&device_id=66865915362&iid=97311708696&mcc_mnc=46011&os_version=8.1.0&channel=wandoujia_aweme1&version_code=570&device_type=Redmi%206A&language=zh&resolution=720*1344&openudid=3b16bece99db59ec&update_version_code=5702&app_name=aweme&version_name=5.7.0&os_api=27&device_brand=xiaomi&ssmix=a&device_platform=android&dpi=320&aid=1128', 'Host: aweme-lq.snssdk.com\r\nConnection: keep-alive\r\nCookie: install_id=97311708696; ttreq=1$5061d2c40dcb8cca3f22ce646c4ff8fed9264880; qh[360]=1; odin_tt=f6bb26ff0d59a9fd37001d917bcf8e216addab699af4474531cc9b328cf67b986d3b06d2b13a0b12c675e2f29633d13ce2cbd616b50ec296713b0166b011b8c8\r\nAccept-Encoding: gzip\r\nX-SS-REQ-TICKET: 1577610618269\r\nsdk-version: 1\r\nUser-Agent: com.ss.android.ugc.aweme/570 (Linux; U; Android 8.1.0; zh_CN; Redmi 6A; Build/O11019; Cronet/58.0.2991.0)\r\nX-Khronos: 1577610618\r\nX-Gorgon: 03006cc00000bbcd9d40a76ab973faa2b7c97b81afd52cb5f9b4\r\nX-Pods:', 'suc', '2019-12-30 08:22:30', '2020-01-09 02:11:32'),
(3, '热搜视频榜', 'get', 'https://aweme-lq.snssdk.com/aweme/v1/hotsearch/aweme/billboard/?ts=1577952067&js_sdk_version=&app_type=normal&manifest_version_code=570&_rticket=1577952067834&ac=wifi&device_id=66865915362&iid=97651225365&mcc_mnc=46011&os_version=8.1.0&channel=wandoujia_aweme1&version_code=570&device_type=Redmi%206A&language=zh&resolution=720*1344&openudid=3b16bece99db59ec&update_version_code=5702&app_name=aweme&version_name=5.7.0&os_api=27&device_brand=xiaomi&ssmix=a&device_platform=android&dpi=320&aid=1128&as=a195fa3043d49ef3ad4866&cp=af46ea573bd00230e1Yaae&mas=0130d587fb2fe9e8dc6d751df81f60fff26c6c1c2c2686cc66a69c', 'Host: aweme-lq.snssdk.com\r\nConnection: keep-alive\r\nCookie: install_id=97651225365; ttreq=1$f88604ab97880652ffc9cce8a056dec4f0582cbb; odin_tt=afd3d1003d3576180598e98f3a9eb8c7994e8e7f81efd00043b480197e18dd4a84a4cee2defe90f2fe918b7f4773b0fe26d07d5003607770d1f3216f78156b52; qh[360]=1\r\nAccept-Encoding: gzip\r\nX-SS-REQ-TICKET: 1577952067820\r\nsdk-version: 1\r\nUser-Agent: com.ss.android.ugc.aweme/570 (Linux; U; Android 8.1.0; zh_CN; Redmi 6A; Build/O11019; Cronet/58.0.2991.0)\r\nX-Khronos: 1577952067\r\nX-Gorgon: 03006cc08000dacfead3270baf9a79f574e2648085ba46062dc6\r\nX-Pods:', 'suc', '2020-01-02 08:02:45', '2020-01-02 08:34:15'),
(4, '指定账号的视频', 'get', 'https://api-lq.amemv.com/aweme/v1/aweme/post/?max_cursor=0&user_id=3443304287175198&count=20&retry_type=no_retry&iid=97651225365&device_id=66865915362&ac=wifi&channel=wandoujia_aweme1&aid=1128&app_name=aweme&version_code=570&version_name=5.7.0&device_platform=android&ssmix=a&device_type=Redmi+6A&device_brand=xiaomi&language=zh&os_api=27&os_version=8.1.0&openudid=3b16bece99db59ec&manifest_version_code=570&resolution=720*1344&dpi=320&update_version_code=5702&_rticket=1577954744563&mcc_mnc=46011&ts=1577954744&js_sdk_version=1.13.10&as=a125aa10280bdead2d8300&cp=acb2ee5e82d90ad5e1Ykao&mas=01eec9880de0d7961bb38a3541105939160c0ccc1c264c2686a626', 'Host: api-lq.amemv.com\r\nConnection: keep-alive\r\nCookie: install_id=97651225365; ttreq=1$f88604ab97880652ffc9cce8a056dec4f0582cbb; odin_tt=afd3d1003d3576180598e98f3a9eb8c7994e8e7f81efd00043b480197e18dd4a84a4cee2defe90f2fe918b7f4773b0fe26d07d5003607770d1f3216f78156b52; qh[360]=1\r\nAccept-Encoding: gzip\r\nsdk-version: 1\r\nUser-Agent: com.ss.android.ugc.aweme/570 (Linux; U; Android 8.1.0; zh_CN; Redmi 6A; Build/O11019; Cronet/58.0.2991.0)\r\nX-Khronos: 1577954744\r\nX-Gorgon: 03006cc080004b3d75d7270baf9a79f574e2648085ba4676f5b2\r\nX-Pods:', 'suc', '2020-01-02 08:50:23', '2020-01-03 06:21:27'),
(5, '关注', 'get', 'https://api.amemv.com/aweme/v1/commit/follow/user/?user_id=3443304287175198&type=1&channel_id=1&from=0&retry_type=no_retry&iid=97651225365&device_id=66865915362&ac=wifi&channel=wandoujia_aweme1&aid=1128&app_name=aweme&version_code=570&version_name=5.7.0&device_platform=android&ssmix=a&device_type=Redmi+6A&device_brand=xiaomi&language=zh&os_api=27&os_version=8.1.0&openudid=3b16bece99db59ec&manifest_version_code=570&resolution=720*1344&dpi=320&update_version_code=5702&_rticket=1578105905331&mcc_mnc=46011&ts=1578105904&js_sdk_version=1.13.10&as=a1856fd0d0837eacbf6299&cp=f734e45b03f103c2e1IoQs&mas=012800b0740eb04177e4f30a8a3e5001439c9c4c6c6646c686a6ec', 'Cookie: install_id=97651225365; ttreq=1$f88604ab97880652ffc9cce8a056dec4f0582cbb; qh[360]=1; d_ticket=6bf3ca8dbf9254949643e76d0278d179e98e5; odin_tt=2adb1ef2e6aec4ab65b715e4a9d22286b32bb02fce08babce933664a4993a1e262beca826fc1a993597bf353ff34d57c; msh=zn_wqmVM5YjbTxonsl8iSV-kR18; sid_guard=ffe9416ce8eb250be28d2bdc65ce9d9b%7C1578105222%7C5184000%7CWed%2C+04-Mar-2020+02%3A33%3A42+GMT; uid_tt=879b0b0d742776596c9d3b3087a6f8e6; sid_tt=ffe9416ce8eb250be28d2bdc65ce9d9b; sessionid=ffe9416ce8eb250be28d2bdc65ce9d9b\r\nAccept-Encoding: gzip\r\nX-Tt-Token: 00ffe9416ce8eb250be28d2bdc65ce9d9b2708402cdcb2e616be54e3ca2a6686353e7de2a995aaf293373da3663b6c60c31c\r\nsdk-version: 1\r\nUser-Agent: com.ss.android.ugc.aweme/570 (Linux; U; Android 8.1.0; zh_CN; Redmi 6A; Build/O11019; Cronet/58.0.2991.0)\r\nX-Khronos: 1578105263\r\nX-Gorgon: 0366258b8000307c398e225ddcc8a04900d45ac3c82da015a982\r\nX-Pods:', 'suc', '2020-01-04 02:14:20', '2020-01-04 02:54:41'),
(6, '商品详情（销量，浏览量）', 'get', 'https://aweme-lq.snssdk.com/aweme/v1/promotion/user/promotions/?count=5&cursor=0&user_id=98582936088&version=2&from=2&ts=1578192186&js_sdk_version=1.13.10&app_type=normal&manifest_version_code=570&_rticket=1578192187378&ac=wifi&device_id=66865915362&iid=97651225365&mcc_mnc=46011&os_version=8.1.0&channel=wandoujia_aweme1&version_code=570&device_type=Redmi%206A&language=zh&resolution=720*1344&openudid=3b16bece99db59ec&update_version_code=5702&app_name=aweme&version_name=5.7.0&os_api=27&device_brand=xiaomi&ssmix=a&device_platform=android&dpi=320&aid=1128&as=a15574310a93be8de12999&cp=413be150a61213dde1QeYi&mas=0157e2470081f72e08b42f5169078a29f49c9c9c4c8ca6261ca646', 'Host: aweme-lq.snssdk.com\r\nConnection: keep-alive\r\nCookie: install_id=97651225365; ttreq=1$f88604ab97880652ffc9cce8a056dec4f0582cbb; d_ticket=a33807518f36d140997cbff811a35197e98e5; odin_tt=bd40128fa96458521594907164e0a585bddaa9222df7585e12ce989ce7b9889c0dca231575f2ae70b682afe94a7cd953; msh=2OjL1wHUVez2sDtpHe9MklN5vSI; sid_guard=1ecb0a8c73b7d5223339f49db164486f%7C1578135138%7C5184000%7CWed%2C+04-Mar-2020+10%3A52%3A18+GMT; uid_tt=041dc583ccdd9ec4d48b1e4f0bbdc0bd; sid_tt=1ecb0a8c73b7d5223339f49db164486f; sessionid=1ecb0a8c73b7d5223339f49db164486f\r\nAccept-Encoding: gzip\r\nX-SS-REQ-TICKET: 1578192187376\r\nX-Tt-Token: 001ecb0a8c73b7d5223339f49db164486fcffdf6d14811d1ade5807c21f8da443cbf337aa2e5f5f0d9854a74e150bd796a36\r\nsdk-version: 1\r\nUser-Agent: com.ss.android.ugc.aweme/570 (Linux; U; Android 8.1.0; zh_CN; Redmi 6A; Build/O11019; Cronet/58.0.2991.0)\r\nX-Khronos: 1578192187\r\nX-Gorgon: 036527700000eaa647f04db066152a2a222e6e0d9b07a1b7d7da\r\nX-Pods:', 'suc', '2020-01-05 02:45:30', '2020-01-08 06:44:25'),
(7, '账号视频信息', 'get', 'https://api-hl.amemv.com/aweme/v1/aweme/post/?max_cursor=0&user_id=104941865597&count=20&retry_type=no_retry&iid=98088161773&device_id=70389438276&ac=wifi&channel=wandoujia_aweme1&aid=1128&app_name=aweme&version_code=570&version_name=5.7.0&device_platform=android&ssmix=a&device_type=MI+5s&device_brand=Xiaomi&language=zh&os_api=23&os_version=6.0.1&uuid=540000000317054&openudid=e3ab4943d7c5f436&manifest_version_code=570&resolution=810*1440&dpi=270&update_version_code=5702&_rticket=1578446816321&ts=1578446816&js_sdk_version=1.13.10&as=a1b592e100bede2f654822&cp=2fe4e559035518f0e1McUg&mas=01bc97e422ee0d34df374d44a2e6511b8c4c4c1c2cac6c664ca626', 'Accept-Encoding: gzip\r\nsdk-version: 1\r\nCookie: d_ticket=a9529d8f4c8d60e5723bb60b5e850c182b64f; msh=2OjL1wHUVez2sDtpHe9MklN5vSI; qh[360]=1; odin_tt=ca80ffedbe5a5d155d23d81ba5be178385a88923d5aedd6b1eb086789aa3ec48823d2ca65aa31da3236b7d6dbf0e40474b4a04d3f40bcee2189703f9cc25243c; sid_tt=e3ac5191c3367bad0d6f138f14b99ffe; sessionid=e3ac5191c3367bad0d6f138f14b99ffe; install_id=98088161773; ttreq=1$2f79e349ef863f4fb03e7a22b1201386861c517b\r\nx-tt-token: 00e3ac5191c3367bad0d6f138f14b99ffe5dc4f413d6b6f11b0de4f4729cfe80afa509f9b8b987ebf7050b64f915f813a256\r\nX-Gorgon: 0300000004000a532fdd30a74749f0bc24c6a7c7d15c3da38340\r\nX-Khronos: 1578446816\r\nX-Pods: \r\nHost: api-hl.amemv.com\r\nConnection: Keep-Alive\r\nUser-Agent: okhttp/3.10.0.1', 'suc', '2020-01-08 01:28:50', '2020-01-08 06:56:08'),
(8, '单个视频信息', 'get', 'https://aweme-lq.snssdk.com/aweme/v1/aweme/detail/?aweme_id=6778846741434289408&origin_type=link&retry_type=no_retry&iid=98491914327&device_id=66865915362&ac=wifi&channel=wandoujia_aweme1&aid=1128&app_name=aweme&version_code=570&version_name=5.7.0&device_platform=android&ssmix=a&device_type=Redmi+6A&device_brand=xiaomi&language=zh&os_api=27&os_version=8.1.0&openudid=3b16bece99db59ec&manifest_version_code=570&resolution=720*1344&dpi=320&update_version_code=5702&_rticket=1578465711287&mcc_mnc=46011&ts=1578465711&js_sdk_version=1.13.10&as=a155c7111fea9ee9c52055&cp=73a6ed5bfa56149fe1Sw%5Ba&mas=0194d69177406a53568de47658fd465e28acac0c4cacc69ca6a69c', 'Host: aweme-lq.snssdk.com\r\nConnection: keep-alive\r\nCookie: install_id=98491914327; ttreq=1$1ebc63f70fad9177ec777ef637d39448631e62d8; odin_tt=0c1d464eedbc19a2980b3376e6e6bd8c4dd006a5e0ea52ffddc80d83b2ab81f45d761aa958522cefa5d512918088e363b6e7e7b72dbbed26a44d4ac3d42a43ac; qh[360]=1\r\nAccept-Encoding: gzip\r\nX-SS-REQ-TICKET: 1578465711311\r\nsdk-version: 1\r\nUser-Agent: com.ss.android.ugc.aweme/570 (Linux; U; Android 8.1.0; zh_CN; Redmi 6A; Build/O11019; Cronet/58.0.2991.0)\r\nX-Khronos: 1578465711\r\nX-Gorgon: 03006cc0000089f5cd04a76ab955353e4a507b81afd59416d042\r\nX-Pods:', 'suc', '2020-01-08 06:47:44', '2020-01-08 06:47:47'),
(9, '评论回复内容', 'get', 'https://aweme-hl.snssdk.com/aweme/v1/comment/list/reply/?comment_id=6778793537086734351&cursor=0&count=3&top_ids=6779408435466944516&item_id=6778767923034049792&ts=1578468946&js_sdk_version=&app_type=normal&os_api=23&device_type=MI%205s&device_platform=android&ssmix=a&iid=98088161773&manifest_version_code=570&dpi=270&uuid=100000000023456&version_code=570&app_name=aweme&version_name=5.7.0&openudid=e3ab4943d7c5f436&device_id=70389438276&resolution=810*1440&os_version=6.0.1&language=zh&device_brand=Xiaomi&ac=wifi&update_version_code=5702&aid=1128&channel=wandoujia_aweme1&_rticket=1578468947250&mcc_mnc=46001&as=a1a578f162754e56d54800&cp=8b5ae25e2a5f1867e1Sc[g&mas=01c557b6f0b6e13c31899914f01b015e000c0c1c2cac266caca62c', 'Accept-Encoding: gzip\r\nX-SS-REQ-TICKET: 1578468947249\r\nsdk-version: 1\r\nCookie: odin_tt=0eb2bfe533cdf084d022766c06130eebc2b30d61f2d05b8dbecec557896689f719ad70b426378adc0b4fe1fe6b604fa1e1431b77ff8455f358913b7af31ddb20; qh[360]=1; install_id=98088161773; ttreq=1$2f79e349ef863f4fb03e7a22b1201386861c517b\r\nX-Gorgon: 03006cc00400494a2ea17d58ca3b4fe1236fe2ac9fedaf1bd917\r\nX-Khronos: 1578468947\r\nX-Pods: \r\nHost: aweme-hl.snssdk.com\r\nConnection: Keep-Alive\r\nUser-Agent: okhttp/3.10.0.1', 'suc', '2020-01-08 07:36:40', '2020-01-08 07:36:44'),
(10, '账号信息', 'get', 'https://aweme-eagle-hl.snssdk.com/aweme/v1/user/?user_id=59389751412&retry_type=no_retry&iid=98088161773&device_id=70389438276&ac=wifi&channel=wandoujia_aweme1&aid=1128&app_name=aweme&version_code=570&version_name=5.7.0&device_platform=android&ssmix=a&device_type=MI+5s&device_brand=Xiaomi&language=zh&os_api=23&os_version=6.0.1&uuid=540000000317054&openudid=e3ab4943d7c5f436&manifest_version_code=570&resolution=810*1440&dpi=270&update_version_code=5702&_rticket=1578388071182&ts=1578388071&js_sdk_version=1.13.10&as=a1a534d1a7c6be9a544211&cp=426bef59744d17a9e1Ycag&mas=01d2807f729d17e45ffe82982852949a768c8c4c2c2cac869ca646', '1', 'suc', '2020-01-08 08:50:08', '2020-01-08 08:50:11'),
(11, 'yyy', 'get', 'https://aweme-eagle-hl.snssdk.com/aweme/v1/user/?user_id=96611689352&retry_type=no_retry&iid=98088161773&device_id=70389438276&ac=wifi&channel=wandoujia_aweme1&aid=1128&app_name=aweme&version_code=570&version_name=5.7.0&device_platform=android&ssmix=a&device_type=MI+5s&device_brand=Xiaomi&language=zh&os_api=23&os_version=6.0.1&uuid=540000000317054&openudid=e3ab4943d7c5f436&manifest_version_code=570&resolution=810*1440&dpi=270&update_version_code=5702&_rticket=1578388071182&ts=1578388071&js_sdk_version=1.13.10&as=a1a534d1a7c6be9a544211&cp=426bef59744d17a9e1Ycag&mas=01d2807f729d17e45ffe82982852949a768c8c4c2c2cac869ca646', '111', 'suc', '2020-01-11 11:12:51', '2020-01-11 11:12:53');

-- --------------------------------------------------------

--
-- 表的结构 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_30_063319_create_api_requests_table', 1);

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `api_requests`
--
ALTER TABLE `api_requests`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `api_requests`
--
ALTER TABLE `api_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

