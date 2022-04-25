<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Go Trip 경상</title>
<link rel="stylesheet" type="text/css" href="./css/trip_common.css">
<link rel="stylesheet" type="text/css" href="./css/board.css">
<script>
  function check_input() {
      if (!document.festival_form.subject.value)
      {
          alert("제목을 입력하세요!");
          document.festival_form.subject.focus();
          return;
      }
      if (!document.festival_form.content.value)
      {
          alert("내용을 입력하세요!");
          document.festival_form.content.focus();
          return;
      }
      document.festival_form.submit();
   }
</script>
</head>
<body>
<header>
    <?php include "header.php";?>
</header>
<?php
if ( !$userid )
{
    echo("
                <script>
                alert('게시판 글쓰기는 로그인 후 이용해 주세요!');
                history.go(-1)
                </script>
    ");
            exit;
}
?>
<section>
   	<div id="board_box">
	    <h3 id="board_title">
	    		축제 소개
		</h3>
	    <form  name="festival_form" method="post" action="festival_insert.php" enctype="multipart/form-data">
	    	 <ul id="board_form">
	    		<li>
	    			<span class="col1">축제 이름 : </span>
	    			<span class="col2"><input name="subject" type="text"></span>
	    		</li>
          <li>
            <span class="col1">지역 : </span>
            <span class="col2"><input name="area" type="text"></span>
          </li>
	    		<li id="text_content">
	    			<span class="col1">설명 : </span>
	    			<span class="col2">
	    				<textarea name="content"></textarea>
	    			</span>
	    		</li>
          <li>
            <span class="col1">상세정보 : </span>
            <span class="col2">
              <textarea name="Details"></textarea>
              </span>
          </li>
	    		<li>
			        <span class="col1"> 사진</span>
			        <span class="col2"><input type="file" name="upfile"></span>
			    </li>
	    	    </ul>
	    	<ul class="buttons">
				<li><button type="button" onclick="check_input()">완료</button></li>
				<li><button type="button" onclick="location.href='festival_list.php'">목록</button></li>
			</ul>
	    </form>
	</div>
</section>
</body>
</html>
