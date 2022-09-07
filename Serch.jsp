<%@ page language="java" import="java.sql.*" %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project","project");
	Statement stmt=con.createStatement();
	String str="customers";
	ResultSet rs=stmt.executeQuery("select * from "+str+" where cid="+111);
	while(rs.next()){
		out.println("cid :"+rs.getInt(1)+" "+"cname :"+rs.getString(2));
	}
%>