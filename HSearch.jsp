<%@ page language="java" import="java.sql.*" %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project","project");
	Statement stmt=con.createStatement();
	String hname=request.getParameter("hname");
	String cname=request.getParameter("cname");
	ResultSet rs=stmt.executeQuery("select * from hospitals where hcity="+"'"+cname+"'");
	int count=0;%>
	<body bgcolor="yellow"><center><H1>Hospital List In The Selected City</H1></center><BR><BR></body>
			<table width="700"  border="1" bgcolor="lightyellow"  align="center">
			<tbody><tr>
			<b><td>HID</td>
			<td>HNAME</td>
			<td>HADDR</td>
			<td>HCITY</td></tr></b>
			<%
	while(rs.next()){
		if(hname.equals(rs.getString(2))){
			%>
			
			<tr>
			<td><h4><%=rs.getInt(1) %></h4></td>
			<td><h4><%=rs.getString(2) %></h4></td>
			<td><h4><%=rs.getString(3) %></h4></td>
			<td><h4><%=rs.getString(4) %></h4></td>
			</tr></font>
			
			<%
		}
			}
%>
<font color="RED">
<a href="HSearch.html" >Try Again</a>
<a href="Search.html" >BACK</a>
