<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@page import="kids.dealer;import java.util.Map;import javax.faces.context.FacesContext;"%><html>
<body>

<f:view> 
<h:form>
<table>
<%
if (request.getParameter("name") == null) {
//out.println("Please enter the fields.");
} else {%>
<tr><td><%
Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
ses.put("usern",request.getParameter("name"));

dealer dlr=new dealer();
if(dlr.isValidDealer(request.getParameter("name"))==true)
{%>	
Type Password<h:inputSecret value="#{dealer.password}" ></h:inputSecret>
<h:commandButton value="Save Password" action="#{dealer.saveDealerPassword}"></h:commandButton>
<%}
else
{
	out.println("Invalid dealer");	
}
}
%>
</td></tr>
</table>
<h:messages globalOnly="true"></h:messages>
</h:form>
</f:view>
</body>
</html>