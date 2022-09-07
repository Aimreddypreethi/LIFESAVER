<%@ page language="java" import="java.sql.*" %>
<%
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project","project");
	PreparedStatement pstmt=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
	String cname=request.getParameter("user");
	String cpass=request.getParameter("pass");
	String gen=request.getParameter("r");
	String edate=request.getParameter("edate");
	String pr=request.getParameter("pr");
	String addr=request.getParameter("addr");
	String city=request.getParameter("branch");
	pstmt.setString(1,cname);
	pstmt.setString(2,cpass);
	pstmt.setString(3,gen);
	pstmt.setString(4,edate);
	pstmt.setString(5,pr);
	pstmt.setString(6,addr);
	pstmt.setString(7,city);
	pstmt.execute();
}catch(Exception e){
out.println(e);
}
%>
<body bgcolor="lightyellow"><center><h1>U R SUCCESFULLY REGISTRED.....</H1>
<H2><a href="Customer.html" >BACK</a></H2></center></body>
