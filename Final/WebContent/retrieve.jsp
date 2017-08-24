<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%@ page import="java.sql.*"  %>
<%


String dbName = "score";
String userName = "outsecure";
String password = "outsecure";
String hostname = "outsecure.cftgxedbbz0s.us-east-1.rds.amazonaws.com";
String port = "1433";
//String jdbcUrl = "jdbc:sqlserver://" + hostname + ":" +
  //port + "/" + dbName + "?user=" + userName + "&password=" + password;
String jdbcUrl = "jdbc:sqlserver://outsecure.cftgxedbbz0s.us-east-1.rds.amazonaws.com:1433;databaseName=score";

try {
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Critical</b></td>
<td><b>High</b></td>
<td><b>Medium</b></td>
<td><b>low</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(jdbcUrl,userName,password);
statement=connection.createStatement();
String sql ="SELECT * FROM Result";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("critical") %></td>
<td><%=resultSet.getString("High") %></td>
<td><%=resultSet.getString("medium") %></td>
<td><%=resultSet.getString("low") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
	
</body>
</html>