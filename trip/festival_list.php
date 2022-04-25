<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Go Trip 경상</title>
<link rel="stylesheet" type="text/css" href="./css/trip_common.css">
<link rel="stylesheet" type="text/css" href="./css/festival_list0.css">
</head>
<body>
<header>
    <?php include "header.php";?>
</header>
<section>
    </div>
   	<div id="board_box">
	    <h3>

		</h3>
	    <ul id="festival_list">
				<li>
          <span class="col1"></span>
          <span class="col2">지역</span>
					<span class="col3">축제 이름</span>
					<span class="col4">사진</span>
          <span class="col5">좋아요</span>
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

	$scale = 10;

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
    $file_copied = $row["file_copied"];
    $hit = $row["hit"];


      if ($row["file_name"])
      	$file_image = "<img src='./img/file.gif'>";
      else
      	$file_image = " ";
?>
				<li>
          <span class="col2"><?=$area?></span>
					<span class="col3"><a href="festival_view.php?num=<?=$num?>"><?=$subject?></a></span>
					<span class="col4"><img src="./data/<?=$file_copied?>" width="100" height="100"></span>
          <span class="col5"><?=$hit?></span>
          <span class="col6"><button onclick="location.href='festival_hit.php?num=<?=$num?>&page=<?=$page?>&hit=<?=$hit?>'">좋아요</button></span>
				</li>
<?php
   	   $number--;
   }
   mysqli_close($con);

?>
	    	</ul>
			<ul id="page_num">
<?php
	if ($total_page>=2 && $page >= 2)
	{
		$new_page = $page-1;
		echo "<li><a href='festival_list.php?page=$new_page'>◀ 이전</a> </li>";
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
			echo "<li><a href='festival_list.php?page=$i'> $i </a><li>";
		}
   	}
   	if ($total_page>=2 && $page != $total_page)
   	{
		$new_page = $page+1;
		echo "<li> <a href='festival_list.php?page=$new_page'>다음 ▶</a> </li>";
	}
	else
		echo "<li>&nbsp;</li>";
?>
			</ul>
			<ul class="buttons">
				<li>
<?php
    if($userid) {
?>
					<button onclick="location.href='festival_form.php'">글쓰기</button>
<?php
	} else {
?>
					<a href="javascript:alert('관리자 전용!')"><button>글쓰기</button></a>
<?php
	}
?>
				</li>
			</ul>
	</div>
</section>
</body>
</html>
