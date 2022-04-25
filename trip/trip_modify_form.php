<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Go Trip 경상</title>
<link rel="stylesheet" type="text/css" href="./css/trip_common.css">
<link rel="stylesheet" type="text/css" href="./css/board.css">
<script>
  function check_input() {
      if (!document.trip_form.content.value)
      {
          alert("내용을 입력하세요!");
          document.trip_form.content.focus();
          return;
      }
      document.trip_form.submit();
   }
</script>
</head>
<body>
<header>
    <?php include "header.php";?>
</header>

<section>

   	<div id="board_box">
	    <h3 id="board_title">
	    		수정
		</h3>
<?php
	$num  = $_GET["num"];
	$page = $_GET["page"];

	$con = mysqli_connect("localhost", "user1", "12345", "trip");
	$sql = "select * from trip_ok where num=$num";
	$result = mysqli_query($con, $sql);
	$row = mysqli_fetch_array($result);
	$subject = $row["subject"];
  $area = $row["area"];
	$content = $row["content"];
  $purpose = $row["purpose"];
	$file_name = $row["file_name"];
  $Details = $row["Details"];
?>
      <form  name="trip_form" method="post" action="trip_modify.php?num=<?=$num?>&page=<?=$page?>" enctype="multipart/form-data">
	    	 <ul id="board_form">
	    		<li>
	    			<span class="col1">관광지 명 : </span>
	    			<span class="col2"><?=$subject?></span>
	    		</li>
          <li>
            <span class="col1">지역 : </span>
            <span class="col2"><input name="area" type="text" value="<?=$area?>"></span>
          </li>
	    		<li id="text_content">
	    			<span class="col1">설명 : </span>
	    			<span class="col2">
	    				<textarea name="content"><?=$content?></textarea>
	    			</span>
	    		</li>
          <li>
            <span class="col1">방문목적 : </span>
            <span class="col2"><input name="purpose" type="text" value="<?=$purpose?>"></span>
          </li>
          <li>
            <span class="col1">상세정보 : </span>
            <span class="col2">
              <textarea name="Details"><?=$Details?></textarea>
              </span>
          </li>
	    		<li>
			        <span class="col1"> 사진</span>
			        <span class="col2"><input type="file" name="upfile">현재 : <?=$file_name?></span>
			    </li>
	    	    </ul>
            <ul class="buttons">
    				<li><button type="button" onclick="check_input()">수정하기</button></li>
    				<li><button type="button" onclick="location.href='admin.php'">목록</button></li>
    			</ul>
	    </form>
	</div>
</section>

</body>
</html>
