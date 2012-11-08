
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<!-- # Copyright 2010 RightScale, Inc. All rights reserved.  -->


<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>RightScale Unified Test App</title>
    <link rel="stylesheet" type="text/css" href="../style.css" />
</head>

<body>

<div id="header">
<div id="logo"><img src="../images/logo.png" /></div>
</div>

<div class="code_container">
<div class="code">

<H1>Database Connection Test</H1>

<?php

include '../config/db.php';
// @ravibhure@gmail.com
$dbh = pg_connect("host=$hostname_DB dbname=$database_DB user=$username_DB password=$password_DB");

 if (!$dbh) {
     die("Error in connection: " . pg_last_error());
 }
 
 // execute query
 $sql = "SELECT * FROM app_test";
 $result = pg_query($dbh, $sql);
 if (!$result) {
     die("Error in SQL query: " . pg_last_error());
 }
 
$num=pg_num_rows($result);

 // free memory
 // pg_free_result($result);

 // close connection
 pg_close($dbh);

echo "<b><center> Database($database_DB) Output From Host($hostname_DB)</center></b><br><br>";

$i=0;
while ($i < $num) {

$name=pg_result($result,$i,"name");
$value=pg_result($result,$i,"value");


echo "<b>$name:$value</b><br><hr><br>";

$i++;
}

?>

</div>
</div>

</body>
</html>

