<?php
    $num = $_GET["num"];
    $page = $_GET["page"];
    $hit = $_GET["hit"];
    $hit_up =  1;
    $new_hit = $hit + $hit_up;

    $con = mysqli_connect("localhost", "user1", "12345", "trip");
    $sql = "update festival_ok set hit=$new_hit ";
    $sql .= " where num=$num";
    mysqli_query($con, $sql);

    mysqli_close($con);

    echo "
	      <script>
	          location.href = 'festival_list.php?page=$page';
	      </script>
	  ";
?>
