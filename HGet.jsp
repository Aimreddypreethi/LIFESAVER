<%@ page language="java" import="java.sql.*,java.io.*" %>

<%
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project","project");
		out.println("connected......");
	}
	catch (Exception e)
	{
		out.println("Exception is :"+e);
	}
%>