<?php

include 'config/db.php';

mysql_connect($hostname_DB,$username_DB,$password_DB);
@mysql_select_db($database_DB) or die( "Unable to select database");
$query  = "SELECT * FROM phptest";
$result = mysql_query($query);

$num=mysql_numrows($result);

mysql_close();

echo "<b><center> Database($database_DB) Output From Host($hostname_DB)</b><br><br>";
echo "<center><table border=1><tr> <th>ID</th> <th>Firstname</th> <th>Lastname</th> </tr>";

$i=0;
while ($i < $num) {

  $id        = mysql_result($result,$i,"id");
  $firstname = mysql_result($result,$i,"firstname");
  $lastname  = mysql_result($result,$i,"lastname");

  echo "<tr> <td>$id</td> <td>$firstname</td> <td>$lastname</td> </tr>";
  $i++;
}
echo "</table>";
echo "<b> Starting PHPINFO: </b><hr>";
phpinfo();
echo "</center>";
?>
