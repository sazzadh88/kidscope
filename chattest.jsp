<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="pac.friendsample"%><html>
<head>
<meta name="viewport" content="width=device-width, user-scalable=no" />

<title>Insert title here</title>
</head>
<body>

<table width="100%"  height="100%" cellspacing="0" cellpadding="0" border="1">
  <tr>
    <td valign="top"><f:view>
<%
try
{
if(request.getParameter("username").equals(null)==false)
{String someName = request.getParameter("username") ;
String originalname=friendsample.encrtptedname(someName);
session.setAttribute("sa",originalname);}
else
{
friendsample rr=new friendsample();
rr.friend=session.getAttribute("sa").toString();
rr.getchatlistdata();
}
}
catch(Exception e)
{
	friendsample rr=new friendsample();
	rr.friend=session.getAttribute("sa").toString();
	rr.getchatlistdata();
}
 
%>
<h:form>
<h:outputLabel value="Welcome:#{sessionScope.sa}"></h:outputLabel>
<h:dataTable value="#{sessionScope.secchatlist}" var="grds"  border="0" >

<h:column>
<f:facet name="header">
<h:outputLabel for="lblmess" value="" />
</f:facet>
<h:outputText id="grdmess" value="#{grds.message}" />
</h:column>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblmess1" value="" />
</f:facet>
<h:outputText id="grdmess1" value="#{grds.online}" />
</h:column>


<h:column>
<f:facet name="header">
<h:outputLabel for="lblmess2" value="" />
</f:facet>
<h:graphicImage id="grdmess2" value="#{grds.onlineimage}" />
</h:column>
</h:dataTable>
<h:inputText id="txtmess" value="#{chat.message}"  requiredMessage="*"></h:inputText>
<h:message for="txtmess" ></h:message>
<h:commandButton  id="cmdlog"   action="#{chat.chats}" value="Send"  >
<f:setPropertyActionListener value="#{sessionScope.sa}" target="#{chat.username}" /> 
</h:commandButton>
<h:messages  globalOnly="true"> </h:messages>
 
</h:form>
</f:view></td>
  </tr>
</table>

</body>
</html>