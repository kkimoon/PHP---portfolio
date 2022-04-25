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
<center><br><br><br>
  <h1>상 세 검 색</h1><br><br>
  <table>
    <tr>
      <td>
<form name="search_list" method="post" action="search_view.php">
  <h3>지역</h3><br>
  <ul>
    대구 <input type="radio" name="area" value="대구" checked>&nbsp&nbsp
    경주 <input type="radio" name="area" value="경주">&nbsp&nbsp
    울산 <input type="radio" name="area" value="울산"><br><br>
    부산 <input type="radio" name="area" value="부산">&nbsp&nbsp
    포항 <input type="radio" name="area" value="포항">&nbsp&nbsp
    김해 <input type="radio" name="area" value="김해"><br><br>
  </ul>
  <h3>방문목적</h3><br>
  <ul>
    테마파크 <input type="checkbox" name="purpose[]" value="테마파크">&nbsp&nbsp
    놀이기구 <input type="checkbox" name="purpose[]" value="놀이기구">&nbsp&nbsp
    커플여행 <input type="checkbox" name="purpose[]" value="커플여행">&nbsp&nbsp
    친구와 함께 <input type="checkbox" name="purpose[]" value="친구와 함께"><br><br>
    가족여행 <input type="checkbox" name="purpose[]" value="가족여행">&nbsp&nbsp
    역사 <input type="checkbox" name="purpose[]" value="역사">&nbsp&nbsp
    데이트명소<input type="checkbox" name="purpose[]" value="데이트명소">&nbsp&nbsp
    이색거리 <input type="checkbox" name="purpose[]" value="이색거리"><br><br>
    아이와 함께<input type="checkbox" name="purpose[]" value="아이와 함께">&nbsp&nbsp
    전망대<input type="checkbox" name="purpose[]" value="전망대">&nbsp&nbsp
    이색체험<input type="checkbox" name="purpose[]" value="이색체험">&nbsp&nbsp
    쇼핑 <input type="checkbox" name="purpose[]" value="쇼핑"><br><br>
    데이트코스<input type="checkbox" name="purpose[]" value="데이트코스">&nbsp&nbsp
    인생샷<input type="checkbox" name="purpose[]" value="인생샷">&nbsp&nbsp
    먹거리<input type="checkbox" name="purpose[]" value="먹거리">&nbsp&nbsp
    핫플레이스 <input type="checkbox" name="purpose[]" value="핫플레이스"><br><br>
    바다<input type="checkbox" name="purpose[]" value="바다">&nbsp&nbsp
    여름<input type="checkbox" name="purpose[]" value="여름">&nbsp&nbsp
    해맞이<input type="checkbox" name="purpose[]" value="해맞이">&nbsp&nbsp
    전망좋은곳 <input type="checkbox" name="purpose[]" value="전망좋은곳"><br><br>
    <li><input type="submit" value="찾아보기"></li>
  </ul>

</form>
     <td>
   </tr>
 </table>
</center>

</body>
</html>
