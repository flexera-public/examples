<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%-- Copyright 2013 RightScale, Inc. All rights reserved. --%>
<%@page import="java.security.*,java.util.UUID;" %>

<%!
private String generate_md5(String text)
{
String done="";
  try {
    java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
    byte[] array = md.digest(text.getBytes());
    StringBuffer sb = new StringBuffer();
    for (int i = 0; i < array.length; ++i) {
      sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(1,3));
    }
     done=sb.toString();
  } catch (java.security.NoSuchAlgorithmException e) {
  }
  return done;
}
private void load_it(javax.servlet.jsp.JspWriter page, int loops)
{
  try{

    for (int i = 1; i <= loops; ++i) {
      String random_string=UUID.randomUUID().toString()+UUID.randomUUID().toString()+UUID.randomUUID().toString();
      page.println("String("+i+") = "+random_string+", MD5 = "+generate_md5(random_string)+"<br/>");
    }
  } catch(Exception eek) { }
}
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

<h3>
MD5 Test
</h3>

<%
int loops=1000;
if (request.getParameter("loops") != null){
  loops = Integer.parseInt(request.getParameter("loops"));
  out.println("Looping "+loops+" times<br/><br/>");
}
else {
  out.println("GET parameter 'loops' not set, using "+loops+"<br/><br/>");
}

load_it(out,loops);
%>

</div>
</div>

</body>
</html>
