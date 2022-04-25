
<div id="main_content">
    <div id="trip_rank">

        <h4>BEST5 여행지</h4>
        <ul>
          <li>
            <span class="col2">지역</span>
            <span class="col3">관광지 명</span>
            <span class="col4">사진</span>
            <span class="col6">좋아요</span>
          </li>
<?php

$con = mysqli_connect("localhost", "user1", "12345", "trip");
$sql = "select * from trip_ok order by hit desc limit 5 ";
$result = mysqli_query($con, $sql);


if (!$result)
    echo "게시판 DB 테이블(board)이 생성 전이거나 아직 게시글이 없습니다!";
else
{
    while( $row = mysqli_fetch_array($result) )
    {
      $num = $row["num"];
?>

<li>
  <span><?=$row["area"]?></span>
  <span><a href="trip_view.php?num=<?=$num?>"><?=$row["subject"]?></a></span>
  <span><img src="./data/<?=$row["file_copied"]?>" width="100" height="100"></span>
  <span><?=$row["hit"]?></span>
</li>
<?php
}
}
?>

    </div>
    <div id="festival_rank">
        <h4>BEST5 축제</h4>
        <ul>
          <li>
            <span class="col2">지역</span>
            <span class="col3">축제 이름</span>
            <span class="col4">사진</span>
            <span class="col5">좋아요</span>
          </li>
<?php
$con = mysqli_connect("localhost", "user1", "12345", "trip");
$sql = "select * from festival_ok order by hit desc limit 5 ";
$result = mysqli_query($con, $sql);


if (!$result)
    echo "게시판 DB 테이블(board)이 생성 전이거나 아직 게시글이 없습니다!";
else
{
    while( $row = mysqli_fetch_array($result) )
    {
      $num = $row["num"];
?>

<li>
  <span><?=$row["area"]?></span>
  <span><a href="festival_view.php?num=<?=$num?>"><?=$row["subject"]?></a></span>
  <span><img src="./data/<?=$row["file_copied"]?>" width="100" height="100"></span>
  <span><?=$row["hit"]?></span>
</li>
<?php
  }
}

mysqli_close($con);
?>
</ul>
    </div>
</div>
