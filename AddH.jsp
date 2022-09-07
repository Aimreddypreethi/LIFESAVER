<%@ page language="java" import="java.sql.*" %>
<%
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project","project");
	PreparedStatement pstmt=con.prepareStatement("insert into hospitals values(?,?,?,?)");
	String hname=request.getParameter("hname");
	String haddr=request.getParameter("haddr");
	String hcity=request.getParameter("hcity");
	int hid=(int)Integer.parseInt(request.getParameter("hid").trim());
	pstmt.setInt(1,hid);
	pstmt.setString(2,hname);
	pstmt.setString(3,haddr);
	pstmt.setString(4,hcity);
	pstmt.execute();
}catch(Exception e){
out.println(e);
}
out.println("Insert Successfully");
%>
<center><h2><a href="BloodBank.html"> Back </a></h2>
<h2><a href="Home.html">Home </a></h2></center>