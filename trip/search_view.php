
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Go Trip 경상</title>
<link rel="stylesheet" type="text/css" href="./css/trip_common.css">
<link rel="stylesheet" type="text/css" href="./css/trip_list.css">
</head>
<body>
<header>
    <?php include "header.php";?>
</header>
<section>
    </div>
   	<div id="board_box"><br>

	    <ul id="trip_list">
				<li>
          <span class="col1"></span>
          <span class="col2">지역</span>
					<span class="col3">관광지 명</span>
					<span class="col4">사진</span>
					<span class="col5">방문목적</span>
          <span class="col6">좋아요</span>
				</li>
<?php
error_reporting(0);
$purpose1 = $_POST["purpose"];
$area = $_POST["area"];

$num = count($purpose1);
$size1 = sizeof($purpose1);

$purposeCheck = array($size1);
for ($i=0; $i<$num; $i++) {
  $purposeCheck[$i] = $purpose1[$i];
}

	if (isset($_GET["page"]))
		$page = $_GET["page"];
	else
		$page = 1;

  $con = mysqli_connect("localhost", "user1", "12345", "trip");

  if ($size1 == 0){

    $sql = "select * from trip_ok where area ='$area'";
    $result = mysqli_query($con, $sql);
      while( $row = mysqli_fetch_array($result) ){
    $num = $row["num"];
    $subject = $row["subject"];
    $area = $row["area"];
    $file_copied = $row["file_copied"];
    $hit = $row["hit"];
    $purpose = $row["purpose"];
    ?>
        <li>
          <span class="col2"><?=$area?></span>
          <span class="col3"><a href="trip_view.php?num=<?=$num?>"><?=$subject?></a></span>
          <span class="col4"><img src="./data/<?=$file_copied?>" width="100" height="100"></span>
          <span class="col5"><?=$purpose?></span>
          <span class="col6"><?=$hit?></span>
        </li>
      <?php

  }
  }
  else if ($size1 == 1){
    $check1 = $purposeCheck[0];

    $sql = "select * from trip_ok where area ='$area' and purpose like '%$check1%'";
  	$result = mysqli_query($con, $sql);
      while( $row = mysqli_fetch_array($result) ){
    $num = $row["num"];
    $subject = $row["subject"];
    $area = $row["area"];
    $file_copied = $row["file_copied"];
    $hit = $row["hit"];
    $purpose = $row["purpose"];
?>
    <li>
      <span class="col2"><?=$area?></span>
      <span class="col3"><a href="trip_view.php?num=<?=$num?>"><?=$subject?></a></span>
      <span class="col4"><img src="./data/<?=$file_copied?>" width="100" height="100"></span>
      <span class="col5"><?=$purpose?></span>
      <span class="col6"><?=$hit?></span>
    </li>
  <?php
  }
  }
  else if ($size1 == 2){
    $check1 = $purposeCheck[0];
    $check2 = $purposeCheck[1];

    $sql = "select * from trip_ok where area ='$area' and purpose like '%$check1%' and purpose like '%$check2%'";
  	$result = mysqli_query($con, $sql);
      while( $row = mysqli_fetch_array($result) ){
    $num = $row["num"];
    $subject = $row["subject"];
    $area = $row["area"];
    $file_copied = $row["file_copied"];
    $hit = $row["hit"];
    $purpose = $row["purpose"];

    ?>
        <li>
          <span class="col2"><?=$area?></span>
          <span class="col3"><a href="trip_view.php?num=<?=$num?>"><?=$subject?></a></span>
          <span class="col4"><img src="./data/<?=$file_copied?>" width="100" height="100"></span>
          <span class="col5"><?=$purpose?></span>
          <span class="col6"><?=$hit?></span>
        </li>
      <?php
  }
  }
  else if ($size1 == 3){
    $check1 = $purposeCheck[0];
    $check2 = $purposeCheck[1];
    $check3 = $purposeCheck[2];

    $sql = "select * from trip_ok where area ='$area' and purpose like '%$check1%' and purpose like '%$check2%' and purpose like '%$check3%'";
  	$result = mysqli_query($con, $sql);
      while( $row = mysqli_fetch_array($result) ){
    $num = $row["num"];
    $subject = $row["subject"];
    $area = $row["area"];
    $file_copied = $row["file_copied"];
    $hit = $row["hit"];
    $purpose = $row["purpose"];
    ?>
        <li>
          <span class="col2"><?=$area?></span>
          <span class="col3"><a href="trip_view.php?num=<?=$num?>"><?=$subject?></a></span>
          <span class="col4"><img src="./data/<?=$file_copied?>" width="100" height="100"></span>
          <span class="col5"><?=$purpose?></span>
          <span class="col6"><?=$hit?></span>
        </li>
      <?php
  }
  }
    else {
      echo "
      <script>
      alert('방문목적은 3개까지만 가능합니다 ');
      history.go(-1)
      </script>
      ";

    }
  ?>
  <?php
   mysqli_close($con);
?>
	    	</ul>
	</div>
</section>
</body>
</html>
