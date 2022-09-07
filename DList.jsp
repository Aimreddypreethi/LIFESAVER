<%@ page language="java" import="java.sql.*" %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project","project");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from donors");
%>
<body bgcolor="#ffffo1">
<font color="RED">
<CENTER><H1>Blood Donors List</H1></CENTER>
<table width="700"  border="1" bgcolor="lightyellow"  align="center">
<tbody><tr>
<b><td>DID</td>
<td>DNAME</td>
<td>BSAMPLE</td>
<td>DADDR</td>
<td>PHNO</td>
<td>DCITY</td>
</tr></b>
<%
while(rs.next()){
%>
<tr>
<td><h4><%=rs.getString(1) %></h4></td>
<td><h4><%=rs.getString(2) %></h4>
<td><h4><%=rs.getString(3) %></h4>
<td><h4><%=rs.getString(4) %></h4>
<td><h4><%=rs.getString(5) %></h4>
<td><h4><%=rs.getString(6) %></h4>
</td></tr></font>
<% } %>
</tbody></table></body>
<center><H2><a href="Donor.html" >BACK</a></H2></center>
<center><h2><a href="Home.html">Home </a></h2></center>