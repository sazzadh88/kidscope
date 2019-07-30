<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@page import="java.io.File;"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<META HTTP-EQUIV="REFRESH" CONTENT="1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<frame  src="msglist.faces" name="frame1" scrolling="no" >
sdsdsdsdcccccccccc
<%= new java.util.Date() %>
<%out.println(request.getRealPath("/"));%>
<%File directory = new File (".");

out.println("Current directory's canonical path: " 
		  + directory.getCanonicalPath());
out.println("Current directory's absolute  path: " 
		  + directory.getAbsolutePath());
		  
		  
		  %>
		  
<f:view>
<frameset id="" rows="95,*" framespacing="10" border="0">
    <frame src="tttest.faces">
     
  </frameset>
</f:view>
</body>
</html>