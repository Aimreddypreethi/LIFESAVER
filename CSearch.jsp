<%@ page language="java" import="java.sql.*" %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project","project");
	Statement stmt=con.createStatement();
	String city=request.getParameter("city");
	ResultSet rs=stmt.executeQuery("select cname,address,city from customer where city="+"'"+city+"'");
	int count=0;%>
	<body bgcolor="yellow"><center><H1>Customer List in the Selected city</H1></center><BR><BR></body>
			<table width="700"  border="1" bgcolor="lightyellow"  align="center">
			<tbody><tr>
			<b><td>CNAME</td>
			<td>CADDR</td>
			<td>CCITY</td></tr></b>
			<%
	while(rs.next()){
		//if(city.equals(rs.getString(3))){
			%>
			
			<tr>
			<td><h4><%=rs.getString(1) %></h4></td>
			<td><h4><%=rs.getString(2) %></h4></td>
			<td><h4><%=rs.getString(3) %></h4></td>
			</tr></font>
			
			<%
		//}
			}
%>
<font color="RED">
<a href="CSearch.html" >Try Again</a>
<a href="Search.html" >BACK</a>