<%@ page language="java" import="java.sql.*" %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
	Statement stmt=con.createStatement();
	String bname=request.getParameter("t1");
	
	ResultSet rs=stmt.executeQuery("select * from bsample where bsample="+"'"+bname+"'");
	int count=0;%>
	<body bgcolor="yellow"><center><H1>Selected Blood Group</H1></center><BR><BR></body>
			<table width="700"  border="1" bgcolor="lightyellow"  align="center">
			<tbody><tr>
			<b><td>HID</td>
			<td>HNAME</td>
			<td>BSAMPLE</td>
			<td>UNITS</td></tr></b>
			<%
	while(rs.next()){
		//if(bname.equals(rs.getString(2))){
			%>
			
			<tr>
			<td><h4><%=rs.getInt(1) %></h4></td>
			<td><h4><%=rs.getString(2) %></h4></td>
			<td><h4><%=rs.getString(3) %></h4></td>
			<td><h4><%=rs.getString(4) %></h4></td>
			</tr></font>
			
			<%
		//}
			}
%>
<font color="RED">
<a href="BSearch.html" >Try Again</a>
<a href="Search.html" >BACK</a>