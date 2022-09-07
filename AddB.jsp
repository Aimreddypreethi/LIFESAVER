<%@ page language="java" import="java.sql.*" %>
<%
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project","project");
	PreparedStatement pstmt=con.prepareStatement("insert into bsample values(?,?,?,?,?,?)");
	int hid=(int)Integer.parseInt(request.getParameter("hid").trim());
	String hname=request.getParameter("hname");
	String sid=request.getParameter("bsid");
	int units=(int)Integer.parseInt(request.getParameter("units").trim());
	String did=request.getParameter("did");
	String dname=request.getParameter("dname");
	
	pstmt.setInt(1,hid);
	pstmt.setString(2,hname);
	pstmt.setString(3,sid);
	pstmt.setInt(4,units);
	pstmt.setString(5,did);
	pstmt.setString(6,dname);
	pstmt.execute();
}catch(Exception e){
out.println(e);
}
out.println("Insert Successfully");
%>
<center><h2><a href="BloodBank.html"> Back </a></h2>
<h2><a href="Home.html">Home </a></h2></center>