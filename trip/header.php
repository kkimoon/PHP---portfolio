<?php
    session_start();
    if (isset($_SESSION["userid"])) $userid = $_SESSION["userid"];
    else $userid = "";
    if (isset($_SESSION["username"])) $username = $_SESSION["username"];
    else $username = "";
    if (isset($_SESSION["userlevel"])) $userlevel = $_SESSION["userlevel"];
    else $userlevel = "";
    if (isset($_SESSION["userpoint"])) $userpoint = $_SESSION["userpoint"];
    else $userpoint = "";
?>
        <div id="top">
            <h3>
                <a href="index.php">Go Trip 경상</a>
            </h3>
            <ul id="top_menu">
<?php
    if(!$userid) {
?>
                <li><a href="login_form.php">관리자 로그인</a></li>
<?php
    } else {
                $logged = $username."(".$userid.")님";
?>
                <li><?=$logged?> </li>
                <li> | </li>
                <li><a href="logout.php">로그아웃</a> </li>
<?php
    }
?>
<?php
    if($userlevel==1) {
?>
        <li> | </li>
        <li><a href="admin.php">관리자 모드</a></li>
<?php
    }
?>
            </ul>
        </div>
        <div id="menu_bar">
            <ul>
                <li><a href="index.php">HOME</a></li>
                <li><a href="trip_list.php">여행지</a></li>
                <li><a href="festival_list.php">축제</a></li>
                <li><a href="search_list.php">상세검색</a></li>
            </ul>
        </div>
