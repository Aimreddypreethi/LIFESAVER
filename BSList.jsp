<%@ page language="java" import="java.sql.*" %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project","project");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from bsample");
%>
<body bgcolor="#ffffo1">
<font color="RED">
<CENTER><H3>Blood Samples LIST</H3></CENTER>
<table width="700"  border="1" bgcolor="lightyellow"  align="center">
<tbody><tr>
<b><td>HID</td>
<td>HNAME</td>
<td>BSample</td>
<td>No Of Units</td>
<td>DID</td>
<td>DName</td>
</tr></b>
<%
while(rs.next()){
%>
<tr>
<td><h4><%=rs.getInt(1) %></h4></td>
<td><h4><%=rs.getString(2) %></h4>
<td><h4><%=rs.getString(3) %></h4>
<td><h4><%=rs.getInt(4) %></h4>
<td><h4><%=rs.getString(5) %></h4>
<td><h4><%=rs.getString(6) %></h4>
</td></tr></font>
<% } %>
</tbody></table></body>
<center><h2><a href="AboutUs.html"> Back </a></h2>
<h2><a href="Home.html">Home </a></h2></center>