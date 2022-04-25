<meta charset='utf-8'>
<?php
$mode = $_GET["mode"];
$num  = $_GET["num"];
 ?>
 <script type="text/javascript">
 function delete_confirm() {
   answer = confirm("정말삭제하시겠습니까?");
   if (answer) {
     location.href='trip_delete2.php?num=<?=$num?>&mode=<?=$mode?>';
   }
   else {
     history.back();
   }
 }
 </script>
 <body onload="delete_confirm()">
 </body>
