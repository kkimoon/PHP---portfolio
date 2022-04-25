<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Go Trip 경상</title>
<link rel="stylesheet" type="text/css" href="./css/trip_common.css">
<link rel="stylesheet" type="text/css" href="./css/admin.css">
</head>
<body>
<header>
    <?php include "header.php";?>
</header>
<section>
   	<div id="admin_box"><br>
	    <h3 id="trip_board">
	    	관광지 수정 or 삭제
		</h3>
	    <ul id="trip_list">
				<li>
					<span class="col1">지역</span>
					<span class="col2">관광지 명</span>
					<span class="col3">방문목적</span>
					<span class="col4">수정</span>
					<span class="col5">삭제</span>
				</li>
<?php

if (isset($_GET["page"]))
  $page = $_GET["page"];
else
  $page = 1;

	$con = mysqli_connect("localhost", "user1", "12345", "trip");
	$sql = "select * from trip_ok order by num desc";
	$result = mysqli_query($con, $sql);
  $total_record = mysqli_num_rows($result);

	$scale = 5;

	if ($total_record % $scale == 0)
		$total_page = floor($total_record/$scale);
	else
		$total_page = floor($total_record/$scale) + 1;

+
	$start = ($page - 1) * $scale;

	$number = $total_record - $start;

   for ($i=$start; $i<$start+$scale && $i < $total_record; $i++)
   {
   mysqli_data_seek($result, $i);
   $row = mysqli_fetch_array($result);

      $num = $row["num"];
      $subject = $row["subject"];
	    $area = $row["area"];
      $purpose = $row["purpose"];
?>

		<li>
		<form method="post">
			<span class="col1"><?=$area?></span>
			<span class="col2"><?=$subject?></a></span>
      <span class="col3"><?=$purpose?></a></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<span class="col7"><button type="button" onclick="location.href='trip_modify_form.php?num=<?=$num?>&page=<?=$page?>'">수정</button></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<span class="col8"><button type="button" onclick="location.href='trip_delete.php?num=<?=$num?>'">삭제</button></span>
		</form>
		</li>
<?php
}
?>
</ul>

<ul id="page_num">
<?php
if ($total_page>=2 && $page >= 2)
{
$new_page = $page-1;
echo "<li><a href='admin.php?page=$new_page'>◀</a> </li>";
}
else
echo "<li>&nbsp;</li>";

for ($i=1; $i<=$total_page; $i++)
{
if ($page == $i)
{
echo "<li><b> $i </b></li>";
}
else
{
echo "<li><a href='admin.php?page=$i'> $i </a><li>";
}
}
if ($total_page>=2 && $page != $total_page)
{
$new_page = $page+1;
echo "<li> <a href='admin.php?page=$new_page'>다음 ▶</a> </li>";
}
else
echo "<li>&nbsp;</li>";
?>
</ul>

	    <h3 id="member_title">
	    	축제 수정or삭제
		</h3>
    <ul id="festival_list">
     <li>
       <span class="col1">지역</span>
       <span class="col2">축제이름</span>
       <span class="col4">수정</span>
       <span class="col5">삭제</span>
     </li>
<?php

if (isset($_GET["page"]))
$page = $_GET["page"];
else
$page = 1;

$con = mysqli_connect("localhost", "user1", "12345", "trip");
$sql = "select * from festival_ok order by num desc";
$result = mysqli_query($con, $sql);
$total_record = mysqli_num_rows($result);

$scale = 5;

if ($total_record % $scale == 0)
 $total_page = floor($total_record/$scale);
else
 $total_page = floor($total_record/$scale) + 1;

+
$start = ($page - 1) * $scale;

$number = $total_record - $start;

 for ($i=$start; $i<$start+$scale && $i < $total_record; $i++)
 {
 mysqli_data_seek($result, $i);
 $row = mysqli_fetch_array($result);

    $num = $row["num"];
    $subject = $row["subject"];
   $area = $row["area"];
?>

 <li>
 <form method="post">
   <span class="col1"><?=$area?></span>
   <span class="col2"><?=$subject?></a></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
   <span class="col7"><button type="button" onclick="location.href='festival_modify_form.php?num=<?=$num?>&page=<?=$page?>'">수정</button></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
   <span class="col8"><button type="button" onclick="location.href='festival_delete.php?num=<?=$num?>'">삭제</button></span>
 </form>
 </li>


<?php
}
?>
</ul>
<ul id="page_num">
 <?php
if ($total_page>=2 && $page >= 2)
{
$new_page = $page-1;
echo "<li><a href='admin.php?page=$new_page'>◀</a> </li>";
}
else
echo "<li>&nbsp;</li>";

for ($i=1; $i<=$total_page; $i++)
{
if ($page == $i)
{
echo "<li><b> $i </b></li>";
}
else
{
echo "<li><a href='admin.php?page=$i'> $i </a><li>";
}
}
if ($total_page>=2 && $page != $total_page)
{
$new_page = $page+1;
echo "<li> <a href='admin.php?page=$new_page'>다음 ▶</a> </li>";
}
else
echo "<li>&nbsp;</li>";
?>
</ul>

			</form>
	</div>
</section>
</body>
</html>
