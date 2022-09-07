<%@ page language="java" import="java.sql.*" %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project","project");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from customer");
%>
<body bgcolor="#ffffo1">
<font color="RED">
<CENTER><H3>CUSTOMERS LIST</H3></CENTER>
<table width="700"  border="1" bgcolor="lightyellow"  align="center">
<tbody><tr>
<b><td>Customer Name</td>
<b><td>Gender</td>
<b><td>Enquiry Date</td>
<b><td>Purpose</td>
<b><td>Address</td>
<b><td>City</td>
</tr></b>
<%
while(rs.next()){
%>
<tr>
<td><h4><%=rs.getString(1) %></h4></td>
<td><h4><%=rs.getString(3) %></h4></td>
<td><h4><%=rs.getString(4) %></h4></td>
<td><h4><%=rs.getString(5) %></h4></td>
<td><h4><%=rs.getString(6) %></h4></td>
<td><h4><%=rs.getString(7) %></h4></td>
</tr></font>
<% } %>

</tbody></table></body>

<center><H2><a href="AboutUs.html" >BACK</a></H2></center>
<center><h2><a href="Home.html">Home </a></h2></center>