<%@ page language="java" import="java.sql.*" %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project","project");
	Statement stmt=con.createStatement();
	String hname=request.getParameter("dname").trim();
	String cname=request.getParameter("dcity").trim();
	ResultSet rs=stmt.executeQuery("select * from donors where city="+"'"+cname+"'");
	int count=0;%>
	<body bgcolor="yellow"><center><H1>Donors List In The Selected City</H1></center><BR><BR></body>
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
		if(hname.equals(rs.getString(2))){
			%>
			
			<tr>
			<td><h4><%=rs.getInt(1) %></h4></td>
<td><h4><%=rs.getString(2) %></h4>
<td><h4><%=rs.getString(3) %></h4>
<td><h4><%=rs.getString(4) %></h4>
<td><h4><%=rs.getString(5) %></h4>
<td><h4><%=rs.getString(6) %></h4>
</tr></font>
			
			<%
		}
			}
%>
<a href="HSearch.html" >Try Again</a>