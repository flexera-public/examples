<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


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

<h1>Database Connection Test</h1>

<%
SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServerAIO"].ToString());
  
          Response.Write("<b><center> Database("+cn.Database+") Output From Host("+cn.DataSource+")</center></b><br /><br />");

          SqlCommand cmd = new SqlCommand("SELECT * FROM app_test", cn);
          cn.Open();
          SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
		  while (rdr.Read())
		  {
			Response.Write("<b>"+rdr["name"].ToString()+":"+rdr["value"].ToString()+"</b><br /><hr /><br />");
		  }
		  rdr.Close();
%>

</div>
</div>

</body>
</html>