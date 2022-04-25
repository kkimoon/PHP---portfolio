<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Go Trip 경상</title>
<link rel="stylesheet" type="text/css" href="./css/trip_common.css">
<link rel="stylesheet" type="text/css" href="./css/festival_view.css">
</head>
<script>
  function check_input() {
      if (!document.festival_view.comment.value)
      {
          alert("댓글을 입력하세요!");
          document.festival_view.comment.focus();
          return;
      }

      document.festival_view.submit();
   }
</script>
<body>
<header>
    <?php include "header.php";?>
</header>
 <?php
   $num = $_GET["num"];

   $con = mysqli_connect("localhost", "user1", "12345", "trip");
 	 $sql = "select * from festival_ok where num = $num  ";
   $result = mysqli_query($con, $sql);
   $row = mysqli_fetch_array($result);

   $copied_file_name = $row["file_copied"];
   $content = $row["content"];
   $subject = $row["subject"];
   $Details = $row["Details"];

   $content = htmlspecialchars($content, ENT_QUOTES);
   $content = str_replace(" ", "&nbsp;", $content);
   $content = str_replace("\n", "<br>", $content);

   $Details = htmlspecialchars($Details, ENT_QUOTES);
   $Details = str_replace(" ", "&nbsp;", $Details);
   $Details = str_replace("\n", "<br>", $Details);
mysqli_close($con);
  ?>
<center><br><br><br>
  <h1> <?= $subject?> </h1><br><br><br>
  <table id="content">
      <tr>
         <td>
            <img src="./data/<?=$copied_file_name?>" width="700" height="400">
            <br><br><br>
         </td>
         <td >
            <h4><?= $content ?></h4>
         </td>
      </tr>

    <tr>
       <td>
           <h4><?= $Details?></h4><br><br><br>
       </td>
       <td></td>
    </tr>

   <tr>
     <td colspan="2">
     <form  name="festival_view" method="post" action="festival_board_insert.php?num=<?=$num?>" enctype="multipart/form-data">
        <ul id="festival_form">나만의 축제 tip
         <li id="text_content">

             <textarea name="comment"></textarea>


         <button type="button" onclick="check_input()">완료</button>
       </li>
        </ul>
<h2> <br>&nbsp TIP </h2>
   </form>
  </td>
 </tr>
 <?php
    $con = mysqli_connect("localhost", "user1", "12345", "trip");
    $sql = "select * from festival_comment where view_num = $num  ";
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_array($result);
    $num_match = mysqli_num_rows($result);
 ?>
 <tr>
   <td height="200px">
     <?php
     if($num_match == 0){
       echo "";
     }else{


       while( $row = mysqli_fetch_array($result) )
       {
           $comment = $row["comment"];
   ?>
               <li>
                   <?=$row["comment"]?>

               </li>

<?php

}}

?>
   </td>
 </tr>
</table>

</center>

</body>
</html>
