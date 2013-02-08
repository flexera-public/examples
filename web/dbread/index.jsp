<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
   
<%-- Copyright 2010 RightScale, Inc. All rights reserved. --%>
   
<%
  com.rightscale.test.dbtest tst = new com.rightscale.test.dbtest();
  tst.init();
%>
   
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

<h3>Connection Status</h3> 
<%= tst.getConnectionStatus() %><br/>

<h3>Connection Info</h3>
<%= tst.outputSettings() %>

<% 
String[] data = tst.getData();
for(int i=0; i < tst.getResultCount(); i++) {
  out.println("<b>"+i+":"+data[i]+"</b><br><hr><br>");
}
%>

</div>
</div>

</body>
</html>