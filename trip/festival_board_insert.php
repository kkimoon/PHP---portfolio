<meta charset="utf-8">
<?php
    session_start();
    if (isset($_SESSION["userid"])) $userid = $_SESSION["userid"];
    else $userid = "";
    if (isset($_SESSION["username"])) $username = $_SESSION["username"];
    else $username = "";

    $comment = $_POST["comment"];
    $num = $_GET["num"];

	$con = mysqli_connect("localhost", "user1", "12345", "trip");

	$sql = "insert into festival_comment (comment, view_num) ";
	$sql .= " values('$comment', '$num')";
	mysqli_query($con, $sql);

	mysqli_close($con);            

	echo "
	   <script>
	    location.href = 'festival_view.php?num=$num';
	   </script>
	";
?>
