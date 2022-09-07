<%@ page language="java" import="java.sql.*" %>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project","project"
CREATE TABLE CUSTOMER(CNAME VARCHAR2(20),PASSWORD VARCHAR2(20),GENDER VARCHAR2(20),E_DATE DATE,PURPOSE VARCHAR2(20),ADDRESS VARCHAR2(20),CITY VARCHAR2(20));");
out.println("connected to data base.........");
%>