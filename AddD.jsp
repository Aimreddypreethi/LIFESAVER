<%@ page language="java" import="java.sql.*" %>
<%
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
	PreparedStatement pstmt=con.prepareStatement("insert into donors values(?,?,?,?,?,?)");
	String did=request.getParameter("did");
	String dname=request.getParameter("dname");
	String btype=request.getParameter("btype");
	String daddr=request.getParameter("daddr");
	String phno=request.getParameter("phno");
	String dcity=request.getParameter("dcity");
	
	pstmt.setString(1,did);
	pstmt.setString(2,dname);
	pstmt.setString(3,btype);
	pstmt.setString(4,daddr);
	pstmt.setString(5,phno);
	pstmt.setString(6,dcity);
	pstmt.execute();
}catch(Exception e){
out.println(e);
}
%><body bgcolor="lightyellow">
<center ><h1>DONOR IS ADDED TO LIST</H1>
<h2><a href="AddD.html" >Back</a></h2>
<h2><a href="Home.html" >Home</a></h2>
</center>