-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 20-12-02 04:16
-- 서버 버전: 10.4.14-MariaDB
-- PHP 버전: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `trip`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `festival_comment`
--

CREATE TABLE `festival_comment` (
  `num` int(11) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `view_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `festival_ok`
--

CREATE TABLE `festival_ok` (
  `num` int(11) NOT NULL,
  `subject` char(20) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `area` char(20) NOT NULL,
  `Details` varchar(1000) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL,
  `hit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `festival_ok`
--

INSERT INTO `festival_ok` (`num`, `subject`, `content`, `area`, `Details`, `file_name`, `file_type`, `file_copied`, `hit`) VALUES
(6, '경주문화제야행', '녹음이 푸르러지는 계절! 천년의 향기 그윽한 경주로 여러분을 초대한다.\r\n992년간 신라의 수도였던 경주, 경주의 역사는 신라의 역사이다.\r\n\r\n절터, 고분, 궁궐터를 비롯한 수많은 문화재와 설화 등 이야기 거리가 풍성한 경주. 경주문화재야행의 주 무대인 경주 교촌은 첨성대와 계림, 월성, 월정교를 지척에 두고 향교와 최씨고택을 중심으로 현성된 조선시대 전통 한옥마을이다.\r\n8夜로 펼쳐지는 역사와 전설 그리고 신라 속의 조선 문화를 오감으로 만나는 아름다운 추억 여행이 될 것이다.\r\n\r\n', '경주', '축제 기간:2020.10.30~	2020.11.01\r\n\r\nTel.054-779-6102\r\n\r\n주소:경북 경주시 교동 71   위치:경주 교촌한옥마을', '경주문화제야행.jpg', 'image/jpeg', '2020_12_01_16_12_08.jpg', 1),
(7, '급이있는영화제', '이번 행사는 작년과 마찬가지로 영화 선정 과정부터 관객과의 대화까지 국민이 직접 참여하는 ‘참여형’ 영화제로 진행되며, \r\n10월 12일부터 31일까지 영등위 홈페이지에서 TEEN(12세이상관람가, 15세이상관람가), ADULT(청소년관람불가) 두 개의 분야로 나누어 영화제에서 보고 싶은 영화를 선정하는 투표 이벤트를 진행 중이다.', '부산', '축제 기간:2020.11.26~  2020.11.27\r\n\r\n\r\nTel.051-990-7200\r\n\r\n주소:온라인개최', '급이있는영화제.png', 'image/png', '2020_12_01_16_36_00.png', 1),
(8, '부산국제아트페어', '문화 도시 부산을 중심으로 열린 미술 시장을 성공적으로 개최 해온 부산국제아트페어가 \r\n오는 12월 3일부터 12월 7일까지 5일간 더욱 발전된 모습으로 여러분을 찾아간다. \r\n올해로 19회를 맞이하는 부산국제아트페어는 국내외 유명작가 250여 명이 3천여 점의 작품이 출품되는 아시아의 유일한 열린 미술장터이다.\r\n 2020 BIAF에서는 한국을 포함한 인도, 독일, 미국, 루마니아, 중국, 러시아 7개국의 작가와 작품과 더불어\r\n 신진작가 공모를 통해 신선하면서도 개성과 실력을 갖춘 신진작가들을 선발하여 그룹전을 기획하여\r\n 한국미술의 오늘과 미래를 만나고 소장 할 수 있는 기회를 제공한다.', '부산', '축제 기간:2020.12.03~	2020.12.07\r\n\r\nTel.051-806-1004\r\n\r\n주소:부산광역시 해운대구 APEC로 55  벡스코 제2전시장\r\n\r\n이용요금 : 일반: 10,000원 / 학생: 5,000원(단체 20인이상: 일반:5,000원 \r\n           학생:3,000, 장애인: 무료(동반인50%할인), 만65세 이상: 50% 할인)\r\n\r\n이용시간 : 10:00 ~ 19:00(입장 마감:18:00) / 12.05(목): 12:00 ~ 19:00(개막식: 17:00) / 12.09(월): 10:00 ~ 17:00', '부산국제아트페어.jpg', 'image/jpeg', '2020_12_01_16_38_25.jpg', 2),
(9, '부산항축제', '11월의 늦은밤, 오직 부산항에서만 즐길 수 있는 대규모 해상콘서트 &#039;씨-쓰루(Sea-Thru)&#039;와 다양한 온라인 참여프로그램까지, 기존 오프라인으로 진행되던 체험형 프로그램을 집에서나마 간접적으로 체험할 수 있도록 구성했다.\r\n※ 올해 부산항 축제는 코로나19 확산방지를 위해 오프라인 프로그램은 100% 사전예약제 및 제한된 인원으로 진행되며, 체험프로그램은 온라인으로 운영될 예정이다.', '부산', '축제 기간:2020.11.28~   2020.11.29\r\n\r\nTel.051-507-9716\r\n\r\n주소:부산광역시 영도구 해양로301번길 45', '부산항축제.jpg', 'image/jpeg', '2020_12_01_16_40_00.jpg', 1),
(10, '신라소리축제', '통일 신라시대 때 조성된 성덕대왕신종(일명 에밀레종)을 주제로 한 신라 소리축제 에밀레전이 천년고도 경주에서 개최된다.\r\n\r\n신라 소리축제 에밀레전은 현존하는 세계의 종 가운데 가장 아름답고 순수한 우리 방식으로 만들어진 ‘성덕대왕신종’의 가치를 알리고 정신을 기리기 위해 개최되고 있다.', '경주', '축제 기간:2020.11.20 ~ 	2020.11.22\r\n\r\nTel.053-427-5114\r\n\r\n주소:경북 경주시 교동 274 월정교 일원', '신라소리축제 에밀레전.jpg', 'image/jpeg', '2020_12_01_16_41_27.jpg', 0),
(11, '울산프롬나드', '울산프롬나드페스티벌은 2020년 두 번째를 맞이하는 거리예술축제다. 도심 속 공원인 태화강국가정원을 배경으로 도전적이고 실험정신이 넘치는 국내 예술가들이 무용, 거리극, 공중퍼포먼스 등 다양한 공연을 펼친다.\r\n\r\n2020년은 개최 시기를 가을과 겨울로 나누어 콘텐츠와 장소성에 새로운 의미와 가치를 만들고자 한다.\r\n\r\n코로나19로 인해 변화된 일상에서 울산프롬나드페스티벌은 다양한 방식으로 함께 나누는 &#039;일상 속 위로의 정원&#039;이 될 것이다.\r\n\r\n[행사내용]\r\n공연프로그램: 개막작, 폐막작, 공식초청작, 지역창작지원, 프린지\r\n기획프로그램: 서포터즈, 플리마켓, 예술포럼 등\r\n', '울산', '축제 기간:2020.11.28 ~   2020.12.05\r\n\r\nTel.052-270-9303\r\n\r\n주소:울산광역시 중구 내오산로 67   위치:태화강국가정원 일대', '울산프롬나드.JPG', 'image/jpeg', '2020_12_01_16_42_26.JPG', 7),
(12, '별빛축제 크리스마스 판타지', '밤이 되면 본격적으로 시작되는 별빛축제에는 판타지 광장의 15M 초대형 미라클 트리를 시작으로, 국내 최장길이 250m에 달하는 전국 최장 빛로드인 &lt;라이팅 벌룬 로드&gt;와 10만송이 파란 장미가 빛을 밝히는 전국최대규모 &lt;미라클로즈가든:다이나믹광장&gt;, 삐에로 컨셉의 &lt;별빛 카니발: 카페 트리&gt;가 새롭게 선보일 예정이며, 메가문, 천국의계단, 별빛우산로드 등 이월드의 인기 야간 포토존이 준비되어 있다. 아름다운 &lt;이월드 별빛축제: 별빛크리스마스판타지&gt;에서 로맨틱하고 특별한 추억과 사진을 남길 수 있다.\r\n\r\n11월 7일에는 전국에서 가장 빠른 &quot;미라클 트리”가 희방의 빛을 밝혔다. 빛축제가 오픈하는 11월 21일에는 인싸 산타와 함께 즐기는 산타포토타임, 산타댄스타임이 진행 될 예정이고, 산타로 변신한 이월드 직원들을 만나볼 수 있어, 별빛축제와 함께 크리스마스 축제를 동시에 즐길 수 있다.\r\n\r\n이월드 자유이용권 구매 시, 이월드 별빛축제는 물론 30여종의 놀이기구와 대구의 랜드마크인 83타워를 함께 즐길 수 있다. 83타워 전망대에서 바라보는 대구야경과 13만평 전체가 별빛으로 물들여진 이월드의 광경 또한 별빛축제에서 반드시 즐겨야 하는 필수코스다.\r\n\r\n[행사 내용]\r\n11/7(토) : 전국에서 가장 빠른 대형 트리 점등 &quot;이월드 미라클 트리점등&#039;\r\n11/21(토) ~ 매주 토/일 : 개성 넘치는 훈남 산타와 함께하는 k-pop 댄스 퍼포먼스 및 포토타임 (다이나믹광장)\r\n\r\n※ 83곳의 포토존, 공연, 퍼레이드 등이 상시 준비되어 있으며 자세한 행사내용은 이월드 인스타그램 @eworld.official 또는 이월드 유튜브, 이월드 페이스북 페이지를 참조.\r\n※ 일부 행사는 현장상황에 따라 변경 및 취소될 수 있다.', '대구', '축제 기간:2020.11.21 ~  2021.01.15\r\n\r\nTel.053-620-0001\r\n\r\n주소:대구광역시 달서구 두류공원로 200    위치:이월드', '이월드 별빛축제  크리스마스 판타지.jpg', 'image/jpeg', '2020_12_01_16_46_05.jpg', 13),
(13, '인생꽃 사진관', '놀이기구와 꽃을 함께 즐길 수 있는 이월드 인생꽃사진관은 2020년 9월 5일을 시작으로 11월 30일까지 진행된다. \r\n이 기간 동안 1탄 해바라기, 2탄 코스모스, 3탄 핑크뮬리, 4탄 팜파스, 5탄 갈대를 한 주도 빠짐없이 이월드에서 즐길 수 있다.\r\n인생꽃사진관은 해바라기, 코스모스, 핑크뮬리를 볼 수 있는 5천평 규모의 가든이 구성되어 있으며, \r\n특히 올해는 팜파스와 갈대까지 새롭게 만날 수 있니다. \r\n또한 전년보다 2배 확장된 핑크뮬리존과 주황/핑크 코스모스존으로 다채로운 가을 꽃축제를 만끽할 수 있다.\r\n\r\n뿐만 아니라 이월드를 방문한 고객분들은 꽃과 함께 어우러진 수많은 인기 포토존에서 인생샷을 남길 수 있다. \r\n이월드는 이번 인생꽃사진관을 통해 일상에 지친 시민들에게 힐링 포레스트 속 쉼을 선사하고자 한다. 이월드 인생꽃사진관에서 쉬어가자.', '대구', '축제 기간:2020.09.05 ~ 	2020.11.30\r\n\r\nTel.053-620-0001\r\n\r\n주소:대구광역시 달서구 두류공원로 200   위치:이월드', '이월드 인생꽃사진관.jpg', 'image/jpeg', '2020_12_01_17_03_46.jpg', 2),
(14, '해운대 빛축제', '해운대의 대표적인 겨울축제로 자리매김하고 있는 &#039;제7회 해운대 빛축제&#039;가 2020년 11월 28일 점등식을 시작으로 2021년 2월 14일까지 총 79일 동안 개최된다.\r\n\r\n올해는 코로나19 장기화로 &#039;축제&#039; 명칭은 내려놓고, &#039;해운대, 희망의 빛 이야기&#039;를 개최한다.\r\n\r\n해운대해수욕장, 구남로, 해운대시장, 온천길 일대를 빛으로 수놓으며, 코로나로 지친 국민에게 따스한 위로와 희망의 메시지를 전한다.\r\n', '부산', '축제 기간:2020.11.28~	2021.02.14\r\n\r\nTel.051-749-4061~3\r\n\r\n위치: 해운대해수욕장, 해운대광장(구남로), 해운대시장, 온천길 일원\r\n\r\n이용시간 : 18:00~24:00', '해운대 빛축제.jpg', 'image/jpeg', '2020_12_01_17_05_13.jpg', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `members`
--

CREATE TABLE `members` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `pass` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `email` char(80) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `ipaddr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `members`
--

INSERT INTO `members` (`num`, `id`, `pass`, `name`, `email`, `regist_day`, `level`, `point`, `ipaddr`) VALUES
(1, 'ddd', '1234', '권기문', 'ddw03043@naver.com', '2020-11-04 (03:10)', 1, 0, ''),
(2, 'aaa', '111', '마재윤', 'dlwodbs2005@naver.com', '2020-11-04 (03:12)', 9, 2300, ''),
(3, 'ccc', '222', '이재윤', 'akwodbs2006@naver.com', '2020-11-04 (03:13)', 9, 0, ''),
(4, 'aaaa', 'aaaa', '이', 'ddd@naver.com', '2020-11-11 (01:44)', 9, 600, ''),
(5, 'asd', 'asd', 'asd', 'asd@asd', '2020-11-18 (05:35)', 9, 0, '');

-- --------------------------------------------------------

--
-- 테이블 구조 `trip_comment`
--

CREATE TABLE `trip_comment` (
  `num` int(11) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `view_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `trip_ok`
--

CREATE TABLE `trip_ok` (
  `num` int(11) NOT NULL,
  `subject` char(20) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `area` char(20) NOT NULL,
  `purpose` char(20) NOT NULL,
  `Details` varchar(1000) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL,
  `hit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `trip_ok`
--

INSERT INTO `trip_ok` (`num`, `subject`, `content`, `area`, `purpose`, `Details`, `file_name`, `file_type`, `file_copied`, `hit`) VALUES
(18, '강정보(디아크)', '낙동강과 금호강이 만나는 합수지점에 설치된 디아크는 이색적인 건축양식만으로도 대구의 명물로서의 역할을 충분히 하고 있다. \r\n자전거를 즐기는 레저 이용객에서부터 연인, 가족동반 관광객들에게 사랑받고 있는 디아크는 저녁 무렵 더 아름다운 모습을 드러내고 있으니, \r\n해가 질 무렵 전망대에 올라 차한잔 마시는 것만으로도 특별한 하루를 만들 수 있다.\r\n', '대구', '#이색체험   #친구와함께', 'Tel: 053-585-0916~7              주소:대구광역시 달성군 다사읍 강정본길 57\r\n\r\n\r\n이용시간:화~일 전시실 10:00~18:00(월요일 휴무) / 전망대 및 카페 10:00~22:00(연중)', '강정보.jpg', 'image/jpeg', '2020_11_26_06_53_58.jpg', 0),
(21, '이 월드', '이월드는 1987년 10월 타워건립 및 종합테마파크 조성공사 재 착공을 시작으로 1993년 종합 테마파크 마스트플랜을 확정한 후 \r\n1995년 3월 개장한 폭포, 분수, 조명, 꽃으로 장식된 유럽식 도시공원으로 남녀노소 누구나 즐길 수 있는\r\n 놀이기구, 전시. 예술공간, 깔끔한 식당가 등이 마련되어 있다.\r\n 이월드에는 각 테마별로 광장을 만들어 방문객으로 하여금 새로움과 즐거움을 선사하고 있다.\r\n 매표소를 거쳐 들어서는 입구에 진입광장, 랜드의 중앙에 위치한 \r\n중앙광장, 어린이들의 놀이터 어린이광장, 젊은이들을 위한 공간이 영타운광장 등이 대표적인 광장이다.', '대구', '#테마파크 #놀이기구 #커플여행', 'Tel: 053-620-0001              주소:대구광역시 달서구 두류공원로 200\r\n\r\n\r\n이용시간: 평일 : 10:30~19:00\r\n         주말/공휴일 : 10:30~21:00\r\n         입장마감 : 45분전', '이월드.jpg', 'image/jpeg', '2020_11_26_09_43_25.jpg', 14),
(23, '동성로', '젊은 기운이 살아 숨쉬는 도심의 가로광장 동성로(東城路)는 사성로 중에서 대구역네거리와 \r\n중앙치안센터 사이 구간(900m)으로서 대구의 대표적인 중심번화가 중의 하나이다. \r\n본래 대구읍성 동쪽의 성곽지였으나 1907년 헐리고 도로가 되면서 현재에 이르렀다.\r\n 동성로는 대구백화점 앞 야외무대를 중심으로 옛 성곽의 이미지를 재현하는 장대석 띠포장의 보행자전용거리를 따라 \r\n교동 귀금속거리, 떡볶이골목, 가방골목, 야시골목, 구제골목 등 각종 골목상권을 이루고 있다.\r\n 또한 2009년에 조성된 국내 최초의‘대중교통전용지구’(반월당네거리~대구역네거리, 1.05km)는 친인간적, \r\n친환경적인 가로로 다양한 상권과 흥미로운 디자인에 의하여 동성로와 더불어 명품가로로 자리매김하고 있다.\r\n', '대구', '#먹거리 #친구와함께 #핫플레이스', 'Tel:053-627-1337               주소:대구광역시 중구 동성로2길 27', '동성로.jpg', 'image/jpeg', '2020_11_26_09_46_03.jpg', 7),
(24, '김광석 길', '김광석 길은 故 김광석이 살았던 대봉동 방천시장 인근 골목에 김광석의 삶과 음악을 테마로 조성한 벽화거리이다. \r\n2010년 \'\'방천시장 문정성시 사업\'\'의 하나로 방천시장 골목길에 11월부터 조성하기 시작한 김광석 길은 중구청과 11팀의 작가들이 참여하였다. \r\n350m 길이의 벽면을 따라 김광석 조형물과 포장마차에서 국수 말아주는 김광석, 바다를 바라보고 있는 김광석 등 골목의 벽마다 \r\n김광석의 모습과 그의 노래 가사들이 다양한 모습의 벽화로 그려졌다. \r\n매년 가을에는 방천시장과 동성로 일대에서 \'\'김광석 노래 부르기 경연대회\'\'를 개최하여 故 김광석을 추억하고 있다.\r\n', '대구', '#가족여행 #데이트코스 #인생샷', 'Tel:053-661-3328               주소:대구광역시 중구 달구벌대로450길', '김광석거리.jpg', 'image/jpeg', '2020_11_26_09_47_24.jpg', 0),
(25, '수목원', '74,000여 평의 부지에 1986년부터 1990년까지 대구시민의 생활쓰레기 410만톤을 매립한 장소로서 \r\n이곳의 환경문제를 해결하기 1996년부터 1997년까지 150만㎥의 건설잔토를 6~7m로 복토한 후 \r\n2002년 5월까지 수목원을 조성함으로 생태를 복원한 사례이다. \r\n대구수목원은 침엽수원, 활엽수원, 화목원, 야생초화원, 약용식물원, 염료원 등 21개소의 다양한 원을 구성하여\r\n 400여종 6만 그루의 나무와 1,100개 화단에 800여 종 13만 포기의 초화류를 식재하였고, \r\n40종 300여 점의 분재와 200종 2,000점의 선인장과 더불어 300여 점의 수석도 전시하여 \r\n도심에서 가까운 도시형 수목원으로 관찰, 견학, 학습탐구, 휴식에 대구 시민의 사랑을 받고 있다.', '대구', '#데이트코스 #아이와함께', 'Tel: 053-803-7270              주소:대구광역시 달서구 화암로 342\r\n\r\n\r\n\r\n이용시간 : 1~4월, 9~12월 09:00~18:00\r\n           5~8월 08:00~19:00', '수목원.jpg', 'image/jpeg', '2020_11_26_09_49_18.jpg', 4),
(26, '경주월드', '섬머린 스플래쉬/크라크/드라켄/파에톤등 여러가지 놀이기구와 포토존이 많으며\r\n여름에는 바로 옆에 켈리포니아비치를 운영하고 겨울에는 눈썰매장을 개장한다\r\n특히 경주월드에서 유명한 드라켄은 거의 직각으로 떨어지는 스릴만점의\r\n롤러코스터이다 가게되면 꼭 타보시길 추천한다', '경주', '#테마파크 #놀이기구 #커플여행', 'Tel: 054-745-7711              주소:경북 경주시 보문로 544(천군동 191-5)\r\n\r\n\r\n이용시간: 평일:9:50 ~ 18:00\r\n          주말:9:50 ~ 20:00 야간:16:00 ~ 20:00\r\n\r\n이용요금 ​[입장권]\r\n         대인 26,000원 / 청소년 20,000원 / 소인 17,000원\r\n         [자유이용권]\r\n         대인 47,000원 / 청소년 39,000원 / 소인 33,000원', '경주월드.jpg', 'image/jpeg', '2020_11_26_09_55_39.jpg', 0),
(27, '석굴암', '국보 제24호인 석굴암은 신라 경덕왕 10년에 당시의 재상인 김대성에 의해 창건되었다고 전해진다. \r\n불국사에서 산등성이를 타고 등산로로 3km, 신도로로는 9km거리에 있는 \r\n석굴암의 구조는 방형과 원형, 직선과 곡선,평면과 구면이 조화를 이루며 \r\n특히, 벽 주위에 조각된 38체는 어느 것 하나 걸작이 아닌 것이 없고 \r\n전체적인 조화를 통해 고도의 철학성과 과학적인 면모를 나타내고 있으며 \r\n중앙에는 백색 화강암으로된 여래좌상의 본존불이 동해를 굽어보고 있다.\r\n 여래좌상이 바라보는 시선은 문무왕 수중왕릉인 봉길리 앞 대왕암을 향한다.\r\n 수중왕을 수호하는 감은사터, 용이 된 문무왕을 보았다는 이견대가 대왕암 인근 해안에 있다. \r\n불국사.석굴암은 1995년12월6일 해인사 팔만대장경과 종묘와 함께 유네스코 세계문화유산으로 공식 지정되어 보호되고 있다.', '경주', '#가족여행 #역사', 'Tel: 054-746-9933              주소:경상북도 경주시 불국로 873-243\r\n\r\n\r\n이용시간: 2~3월 중순/10월 09:00~17:00\r\n         3월 중순~9월 09:00~17:30\r\n         동절기(11~1월) 07:00~17:00', '석굴암.jpg', 'image/jpeg', '2020_11_26_09_57_33.jpg', 0),
(28, '첨성대', '신라 선덕여왕때 세워진 첨성대는 천문관측대로 동양에서 가장 오래 되고 유일한 석조 구조물이다. \r\n화강암으로 되어 있으며, 규모는 높이 9.17m, 윗지름 3.1m,아랫지름이 5.17m, 지대석 한 변의 길이가 5.35m이다. \r\n이중으로 지어진 지대석과 기단은 네모 형태로 8매와 15매의 장대석으로 되어 있고, \r\n그 위에는 27단으로 원통형의 본체를 쌓았는데, 밑은 넓고 위로 갈수록 좁아지다가 윗부분은 수직으로 되어 있다. \r\n1단의 높이는 약30cm 이고, 정상에는 우물 정(井)자 석이 2단으로 쌓여있는데 \r\n이 위에 어떤 관측기를 놓았을 것이라고 추측된다. \r\n24절기를 별을 통하여 측정하였고 이 정(井) 자석이 신라 자오선의 표준이 되었으며 동서남북의 방위 기준이 되었다고도 한다. \r\n현재 동북쪽으로 약간 기울어져 보이나 석조부분만은 원형을 그대로 간직하고 있는 매우 보기 드문 유적으로, 국보 제31호로 지정되어 있다.\r\n 동양에서 가장 오래된 천문대로 그 가치가 높으며, 당시의 높은 과학수준을 볼 수 있는 문화재이다.\r\n', '경주', '#가족여행 #역사', 'Tel: 054-772-3843              주소:경상북도 경주시 첨성로 140-25\r\n\r\n\r\n이용시간:동절기 : 09:00 ~ 21:00\r\n         하절기 : 09:00 ~ 22:00', '첨성대.jpg', 'image/jpeg', '2020_11_26_09_59_56.jpg', 0),
(29, '황리단길', '황남동 포석로 일대의 “황남 큰길” 이라 불리던 골목길로, \r\n전통한옥 스타일의 카페나 식당, 사진관등이 밀집해 있어 젊은이들의 많이 찾는 곳이다. \r\n&#039;&#039;황리단길&#039;&#039;이라는 이름은 황남동과 이태원의 경리단길을 합쳐진 단어로 “황남동의 경리단길” 이라는 뜻을 가지고 있다. \r\n황리단길은 1960-70년대의 낡은 건물 등이 그대로 보존되어 있어 옛정취를 고스란히 느낄 수 있는 거리이며,\r\n 인근의 첨성대, 대릉원의 관광지를 함께 둘러볼 수 있어 경주의 명소로 각광을 받고 있다.', '경주', '#데이트명소 #커플여행 #이색거리', 'Tel: 054-772-3843             주소:경상북도 경주시 포석로 1080\r\n\r\n', '황리단길.jpg', 'image/jpeg', '2020_11_26_10_01_13.jpg', 1),
(30, '가야테마파크', '김해시민의 일상 문화 휴식 공간. \r\n바쁜 현대인의 일상에 편안한 휴식을 제공하는 일상휴식공간이며\r\n 가족/연인/친구와 함께 다양한 문화를 접할 수 있는 복합문화공간입니다.\r\n Education + Entertainment 체감형 테마파크. \r\n우리민족의 찬란한 유산인 가야의 역사를\r\n 놀이, 체험, 전시를 통해 보고, 듣고, 만지며 배울 수 있는 에듀테인먼트 파크입니다.', '김해', '#가족여행 #테마파크 #아이와 함께', 'Tel:055-340-7900              주소:경상남도 김해시 가야테마길 161\r\n\r\n\r\n이용시간:  테마파크 : 평일 09:30~18:00, 주말 및 공휴일 09:30~20:00\r\n          연간회원, 단체매표소 : 09:30~18:00\r\n          가야무사어드벤처 : 10:00 ~ 18:00\r\n\r\n입 장 료  입장원 : 어른 5,000원 / 청소년 4,000원 / 어린이 3,000원\r\n          익사이팅 타워 : 19,000원\r\n          익사이팅 사이클 : 21,000원\r\n          익사이팅 타워+사이클 : 35,000원\r\n          어드벤처 : 6,000원\r\n          체험권 : 8,000원\r\n', '가야테마파크.jpg', 'image/jpeg', '2020_11_26_10_03_42.jpg', 1),
(31, '김해천문대', '김해천문대는 지난 1998년 12월에 밀레니엄 기념사업의 일환으로\r\n천체와 우주에 대한 일반인의 궁금증을 해소하고 자라나는 청소년들에게 꿈과 희망을 주며, \r\n시민들에게 낭만과 추억을 선사하기 위하여 추진되어 2002년 2월 1일에 개관하였다. \r\n부지 면적은 1,996평, 건축 면적은 460평이다. \r\n건물은 2층이고, 천문대의 모습은 알에서 태어난 가락국의 시조 수로왕(首露王)을 형상화해 타원형으로 만들었다. \r\n시설은 크게 전시동·관측동·강의동으로 나뉜다. 전시동은 천체투영실과 전시실로 이루어져 있다. \r\n천체투영실에는 지름 8m의 반구형(半球形) 스크린에 밤하늘의 별들을 재현해주는 영사기인 천체투영기가 있다. \r\n이곳에서는 계절별 별자리, 태양계 탐사 등 우주를 이해하는 데 도움이 되는 교육 영상물을 상영한다. \r\n지름 20m의 둥근 철제 구조물인 전시실에는 한국의 천문 관측 역사를 입체영상으로 보여주는 \r\n매직비전, 태양계 각 행성에서 자신의 몸무게를 측정할 수 있는 중력실험장치를 비롯해 10개의 천문 교육 전시기구가 있다. \r\n측동은 천체망원경을 통해 사람들이 직접 눈으로 별을 볼 수 있는 시설이다. \r\n주망원경인 대형 굴절망원경·반사망원경을 비롯해 4대의 작은 망원경이 설치되어 있다.', '김해', '#이색체험 #아이와함께 #전망대', 'Tel: 055-337-3785              주소:경상남도 김해시 가야테마길 254\r\n\r\n\r\n이용시간:14:00~22:00 (마감 30분전까지 입장 가능)', '김해천문대.jpg', 'image/jpeg', '2020_11_26_10_05_06.jpg', 9),
(32, '김해 낙동강 레일파크', '김해낙동강 레일바이크는 왕복 3km의 철교를 횡단하며 낙동강의 경치를 조망할 수 있다. \r\n빈티지한 철교 속을 지나는 기분이 이색적인 김해낙동강 레일바이크는 근처에 와인동굴이 함께 있어 더욱 인기다.', '김해', '#커플여행 #친구와 함께', 'Tel: 1544-1555              주소:경상남도 김해시 생림면 마사로473번길 41\r\n\r\n\r\n이용시간:4월~10월 : 09:00 ~ 18:00\r\n        11월 ~ 3월 : 09:00 ~ 17:00\r\n\r\n\r\n이용요금: 2인 : 일반 15,000원 / 단체 13,000원\r\n         3인 : 일반 19.000원 / 단체 15,000원\r\n         4인 : 일반 23,000원 / 단체 18,000원', '레일파크.jpg', 'image/jpeg', '2020_11_26_10_06_42.jpg', 1),
(33, '롯데프리미엄 아울렛', '롯데프리미엄아울렛 김해점에서는 버버리, 듀풍 외 20여 개 해외 명품과 110여 개의 국내외 유명 브랜드의 품격과 스타일을 만날 수 있다. \r\n그리고 브랜드 메가숍, 각종 편의시설 및 대규모 식당가(씨푸드 레스토랑, 전문식당가, 푸드코트)와 \r\n고객 쉼터가 마련되어 더욱 여유롭고 편리한 쇼핑을 즐기실 수 있다.\r\n', '김해', '#쇼핑 #친구와함께', 'Tel: 055-900-2500              주소:경상남도 김해시 장유로 469\r\n\r\n\r\n이용시간:11:00 ~ 20:00 ', '롯데프리미엄아울렛.jpg', 'image/jpeg', '2020_12_01_08_48_09.jpg', 17),
(35, '감천문화마을', '감천문화마을은 1950년대 6.25 피난민의 힘겨운 삶의 터전으로 시작되어 현재에 이르기까지 부산의 역사를 그대로 간직하고 있는 곳이다. \r\n산자락을 따라 질서정연하게 늘어선 계단식 집단 주거형태와모든 길이 통하는 미로같은 골목길의 경관은 감천만의 독특함을 보여준다.\r\n&lt;부산의 낙후된 달동네였지만 문화예술을 가미한 도시재생사업을 추진하면서 지금은 연간 185만명의 국내외 관광객이 다녀가는 대표 관광명소가 되었다. \r\n산비탈을 따라 계단식으로 들어선 아름다운 파스텔톤의 집들과 미로와 같은 골목길이 있어 한국의 마추픽추, 산토리니로 불린다.\r\n 2016년 대한민국 공간문화대상 최고상인 대통령상을 수상하기도 했다.\r\n감천문화마을에서는 아름다운 자연과 어우러진 그림같은 마을의 풍경을 즐기면서,\r\n 골목골목 설치된 다양한 형태의 작품을 감상할 수 있으며,\r\n 감천문화마을 내 입주작가들의 공방을 통해 다양한 공예 체험도 가능하여 관광객들이 끊임없이 찾고 있다.', '부산', '#커플여행  #가족여행', 'Tel: 053-204-1444             주소:부산광역시 사하구 감내2로 203\r\n', '감천문화마을.jpg', 'image/jpeg', '2020_12_01_14_54_59.jpg', 0),
(36, '광안리 해수욕장', '광안리해수욕장은 부산광역시 수영구 광안2동에 있으며 해운대 해수욕장의 서쪽에 위치하고 있다. \r\n총면적 82,000㎡, 길이 1.4km, 사장폭은 25~110m의 질 좋은 모래사장이 있고, \r\n지속적인 수질 정화를 실시하여 인근의 수영강에 다시 고기가 살 수 있을 정도로 깨끗한 수질을 자랑하며, \r\n특히 젊은이들이 즐겨 찾는 명소이다. 광안리에서는 해수욕뿐 아니라 독특한 분위기를 자아내는 레스토랑, \r\n카페 등과 시내 중심가 못지않은 유명 패션상가들이 즐비하며, 다양한 먹을거리, \r\n볼거리가 있어서 피서의 즐거움을 더해준다. 특히 밤이 되면 광안대교의 아름다운 야경이 장관이다.', '부산', '#바다 #가족여행 #여름', 'Tel: 051-622-4251              주소:부산광역시 수영구 광안해변로 219\r\n\r\n\r\n이용시간: 09:00~18:00', '광안리.jpg', 'image/jpeg', '2020_12_01_14_57_03.jpg', 0),
(37, '서면 1번가', '부산 부산진구 \"서면1번가\"는 옛 천우장에서 LG서비스센터까지 폭 8m, 길이 330m 구간으로 서면에서도 \r\n가장 번화한 거리이자 \"예술의 거리\"로 유명하다.\r\n\"서면1번가\"를 표시하는 대형 입간판을 중심으로 주점, 카페가 밀집해있다.\r\n 화려한 네온사인을 밝힌 주점들과 먹거리 골목을 안고 있는 이곳의 분위기는 매우 흥겹다.\r\n 젊은 분위기의 카페와 호프집 그리고 값이 싸고 맛있는 음식점들이 즐비해 있어 언제나 젊은이들의 발길이 끊이지 않는다. \r\n또한, 영화관, 공연장, 게임장 등 여가를 즐길 수 있는 위락시설이 가득하다.\r\n서면1번가 거리에서는 봄과 가을에 특설무대를 만들어 축제를 여는데 \r\n젊은이들이 좋아하는 다양한 공연을 펼쳐 한층 더 젊음의 열기가 넘쳐나는 명소가 되고 있다. \r\n주말에는 아마추어 거리악단의 공연과 초상화 그리기, 연극 등 다양한 장르의 문화행사가 펼쳐져 \r\n국내 및 해외 관광객들이 많이 찾는 곳이기도 하다.', '부산', '#먹거리 #친구와함께 #핫플레이스', 'Tel: 051-605-4091              주소:부산광역시 부산진구 신천대로62번길 61\r\n\r\n', '서면 1번가.jpg', 'image/jpeg', '2020_12_01_15_35_26.jpg', 0),
(38, '해운대', '\r\n부산의 대표 해수욕장인 해운대해수욕장. \r\n백사장의 길이 1.5km, 너비 30~50m, 평균수심 1m, 면적 58,400㎥의 규모로 넓은 백사장과 아름다운 해안선을 자랑하고 있으며 \r\n얕은 수심과 잔잔한 물결로 해수욕장의 최적 조건을 갖추고 있다.\r\n&#039;&#039;부산&#039;&#039; 하면 제일 먼저 떠올리는 곳이 해운대 해수욕장이라고 할 만큼 부산을 대표하는 명소이며,\r\n 해마다 여름철 피서객을 가늠하는 척도로 이용될 만큼 국내 최대 인파가 몰리는 곳이기도 하다. \r\n특히, 해안선 주변에 크고 작은 빌딩들과 고급 호텔들이 우뚝 솟아있어 현대적이고 세련된 분위기의 해수욕장으로 유명하기 때문에 \r\n여름 휴가철뿐만 아니라 사시사철 젊은 열기로 붐비고 해외 관광객들에게도 잘 알려져 있어 외국인들이 많이 찾는 곳이다.\r\n', '부산', '#바다 #가족여행 #여름', 'Tel: 051-749-7611              주소:부산광역시 해운대구 해운대해변로 264\r\n\r\n\r\n이용시간: 09:00 ~ 18:00', '해운대.jpg', 'image/jpeg', '2020_12_01_15_44_00.jpg', 0),
(39, '간절곶', '새로운 천년의 첫해가 한반도에서 가장 먼저 떠오르는 곳, 울주군 서생면 대송리의 간절곶은 동해안에서 맨 먼저 떠오르는 해를 맞이할 수 있다. \r\n영일만의 호미곶보다도 1분 빠르게, 강릉시의 정동진보다도 5분이나 더 빨리 해돋이가 시작되는데 그 광경이 장관이다. \r\n울산지역의 진하해수욕장, 서생포 왜성과 함께 새로운 명소로 주목을 받고 있다.\r\n 간절곶등대는 울산남부순환도로 입구에서 20여 분 거리에 있다. \r\n아카시아가 필 때 울산에서 부산해운대 쪽으로 해안선을 따라 달릴 때 바다내음보다 아카시아 향기가 더 그윽하다. \r\n하얀 꽃을 주렁주렁 매단 아카시아 줄기가 축축 늘어져 있는 산길을 끼고 달리다가 어느새 바다가 펼쳐지기도 하는 이 길은 언제라도 드라이브 코스로 제격이다.', '울산', '#바다 #전망좋은곳 #해맞이', 'Tel: 052-239-6313              주소:울산광역시 울주군 서생면 간절곶1길 39-2\r\n\r\n\r\n이용시간: 10:00~17:00', '간절곶.jpg', 'image/jpeg', '2020_12_01_15_45_51.jpg', 1),
(40, '대왕암 공원', '대왕암 공원은 우리나라에서 울주군 간절곶과 함께 해가 가장 빨리 뜨는 대왕암이 있는 곳이다. \r\n산책로에는 숲 그늘과 벚꽃, 동백, 개나리, 목련이 어우러져 있다.\r\n 28만평에 달하는 산뜻한 공간을 가진 이 공원 옆에는 일산해수욕장의 모래밭이 펼쳐져 있다. \r\n우리나라 동남단에서 동해 쪽으로 가장 뾰족하게 나온 부분의 끝 지점에 해당하는 대왕암공원은 동해의 길잡이를 하는 울기항로표지소로도 유명하다. \r\n이곳 항로 표지소는 1906년 우리나라에서 세 번째로 세워졌으며, \r\n이곳 송죽원에서는 무료로 방을 빌려주어 아름다운 추억거리를 만들어 갈 수 있도록 민박을 제공하고 있다. \r\n공원입구에서 등대까지 가는 길은 600m 송림이 우거진 길로, 1백여 년 아름드리 자란 키 큰 소나무 그늘이 시원함과 아늑함을 선사한다.\r\n 송림을 벗어나면 탁 트인 해안절벽으로 마치 선사시대의 공룡화석들이 푸른 바닷물에 \r\n엎드려 있는 듯한 착각을 불러일으킬 정도로 거대한 바위덩어리들의 집합소이다.', '울산', '#아이와함께  #데이트코스', 'Tel: 052-209-3738              주소:울산광역시 동구 등대로 140', '대왕암 공원.jpg', 'image/jpeg', '2020_12_01_15_46_51.jpg', 2),
(41, '태화강 동굴피아', '태화강동굴피아는 일제강점기에 만들어진 인공 동굴이다. \r\n일본군이 군수물자를 보관하기 위해 만든 곳으로, 약 4년간의 공사를 거쳐 2017년에 문화체험공간으로 문을 열었다.', '울산', '#아이와함께 #가족여행 #이색체험', 'Tel: 052-226-0077              주소:울산광역시 남구 남산로 306\r\n\r\n\r\n이용시간: 09:00~18:00', '태화강 동굴피아.jpg', 'image/jpeg', '2020_12_01_15_48_00.jpg', 1),
(42, '영일대', '길이 1,750m에 폭 40~70m, 면적 406,613.4m²(123,000평)의 백사장을 갖춘 해수욕장으로 동해안에서 가장 큰 규모이다. \r\n또한, 인근의 송도해수욕장과 더불어 포항의 대표적인 해수욕장으로 이름나 있으며 가족단위 피서에 적합한 곳이다. \r\n도심권에 위치하여 포항시내의 편의 및 숙박시설로 큰 불편이 없으며 해산물이 많아 즉석 생선회를 맛볼 수 있다.', '포항', '#바다 #여름 #친구와함께', 'Tel: 054-240-7853              주소:경상북도 포항시 북구 해안로 95\r\n', '영일대.jpg', 'image/jpeg', '2020_12_01_15_49_17.jpg', 0),
(43, '죽도시장', '포항 죽도시장은 50년전 갈대밭이 무성한 포항 내항의 늪지대의 노점상들이 들어서기 시작하여 형성되었다.\r\n 69년 10월 죽도시장 번영회가 정식 설립되었고. \r\n현재 점포수가 1500여개에 달하는 경북 동해안 최대 규모를 자랑하는 재래시장이다. \r\n최근 들어서는 대형 할인매장의 포항 진출로 어려움을 겪고 있지만, \r\n죽도시장 상인들은 사이버 죽도시장을 개설하는 등 재출발을 다짐하고 있다.\r\n포항의 중심지인 오거리에서 동쪽으로 500m 지점에 동해안 최대의 상설시장인 죽도어시장이 있고 \r\n수산물 위판장내에 횟집 200여개가 밀집되어 있어 사계절 저렴한 가격으로 동해안의 싱싱한 회를 살 수 있으며, \r\n인근 상가에서 초장 등 재료값만 내면 바로 먹을 수도 있다. \r\n신선한 제철 해산물로 만든 포항물회와 통통한 전복이 통째로 들어간 전복죽이 전국적으로 유명하며,\r\n 특히 겨울철에는 포항의 명물인 과메기를 맛볼 수 있다.', '포항', '#쇼핑 #친구와 함께 #먹거리', 'Tel: 054-247-3776              주소:경상북도 포항시 북구 죽도시장13길 13-1\r\n\r\n\r\n', '죽도시장.jpg', 'image/jpeg', '2020_12_01_15_52_30.jpg', 2),
(44, '포항 운하', '2014년 1월 준공된 포항운하는 포항시 송도동과 죽도1동 사이에 있는 동빈대교와 형산강을 남북으로 잇는 물길로, \r\n총길이가 1.3km이나 바닷길과 연결하면 8~10km의 운하이다.\r\n 옛 물길과 생태환경을 복원하여 시민들의 공원이자 새로운 관광명소로 탄생한 이 곳은, \r\n도시 사이로 흐르는 물길을 따라 크루즈를 타고 낭만을 즐기기에 안성맞춤이며 산책길로도 많은 사람들이 찾고있다.\r\n 포항운하는 기존에 없었던 물길을 인공적으로 만든 것이아니고, \r\n전에 있던 물길을 복원해 옛 모습을 찾으면서 자연스럽게 운하가 만들어졌다. \r\n국가적으로 변혁기를 맞았던 1960년대 말, 포항이 도시화되며 포항제철이 건설되던 때 동빈내항과 형산강을 잇는 작은 물길을 매립해 상업지역과 주거지역을 조성했다. \r\n최근 이를 복원해 물길을 다시 트고 주변을 정비해 포항운하와 유원지로 꾸몄다. \r\n그 곁으로는 시민들을 위한 산책로와 자전거길을 조성해 적극적으로 즐길 수 있는 공간으로 만들었다. \r\n물길을 복원할 때 그 위에 터전을 잡고 살았던 주민들과 상인들의 협조가 큰 역할을 했기 때문에 \r\n운하의 시작점인 포항운하관에는 주민들과 상인들의 이름들이 하나하나 벽에 새겨져있다.', '포항', ' #전망대 #데이트명소', 'Tel: 포항운하 대표전화 054-270-5177,5173\r\n     포항크루즈 054-253-4001\r\n     포항운하관 : 3층 홍보관 09:00 ~ 18:00           \r\n\r\n주소:경북 포항시 남구 해도동 537\r\n\r\n\r\n', '포항 운하.jpg', 'image/jpeg', '2020_12_01_15_54_29.jpg', 12),
(45, '호미곶', '호미곶은 한반도의 최동단에 위치, 한반도 지형상 호랑이 꼬리에 해당하는 곳이다. \r\n고산자 김정호는 대동여지도를 만들면서 이곳을 일곱번이나 답사 측정한 뒤 우리나라의 가장 동쪽임을 확인하였다고 한다. \r\n또한 16세기 조선 명종때 풍수지리학자인 격암 남사고는 이곳을 우리나라 지형상 호랑이 꼬리에 해당한다고 \r\n기술하면서 천하 제일의 명당이라 하였고,육당 최남선은 백두산 호랑이가 앞발로 연해주를 할퀴는 형상으로 \r\n한반도를 묘사하면서 일출제일의 이곳을 조선십경의 하나로 꼽았다.\r\n', '포항', '#바다 #해맞이 #아이와함께', 'Tel: 054-270-5806              주소:경상북도 포항시 남구 호미곶면 해맞이로150번길 20', '호미곶.jpg', 'image/jpeg', '2020_12_01_15_55_44.jpg', 25);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `festival_comment`
--
ALTER TABLE `festival_comment`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `festival_ok`
--
ALTER TABLE `festival_ok`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `trip_comment`
--
ALTER TABLE `trip_comment`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `trip_ok`
--
ALTER TABLE `trip_ok`
  ADD PRIMARY KEY (`num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `festival_comment`
--
ALTER TABLE `festival_comment`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 테이블의 AUTO_INCREMENT `festival_ok`
--
ALTER TABLE `festival_ok`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 테이블의 AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 테이블의 AUTO_INCREMENT `trip_comment`
--
ALTER TABLE `trip_comment`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- 테이블의 AUTO_INCREMENT `trip_ok`
--
ALTER TABLE `trip_ok`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;