<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script type="text/javascript" src="sha1.js"></script>
</head>
<body>
<jsp:include page="securityjsp.jsp"></jsp:include>
<f:view>
<h:form id="AAA">
<h:inputText value="#{dealer.fromDate}"> <f:convertDateTime pattern="dd/MM/yyyy"/> </h:inputText>
<h:inputText value="#{dealer.toDate}"> <f:convertDateTime pattern="dd/MM/yyyy"/> </h:inputText>
<h:commandButton value="ok" action="#{dealer.getDealerList}"></h:commandButton>
<h:dataTable value="#{sessionScope.dealerslist}" rendered="#{sessionScope.isrecord}" var="grds"  border="1" rows="100">
<f:facet name="header"><h:outputText id="idddaut" value="Dealer Enqury" /></f:facet>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitCus" value="Dealer Name" />
</f:facet>
<h:outputText id="grditno" value="#{grds.dealername}" />
</h:column>

<h:column>
<f:facet name="header">
<h:outputLabel for="lblitno" value="Customer Name" />
</f:facet>
<h:outputText id="grditffno" value="#{grds.customerName}" />
</h:column>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitname" value="Address" />
</f:facet>
<h:outputText id="grditname" value="#{grds.address}">
</h:outputText>
</h:column>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitname1" value="Contact No" />
</f:facet>
<h:outputText id="grditname1" value="#{grds.languge}">
</h:outputText>
</h:column>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitname2" value="Email" />
</f:facet>
<h:outputText id="grditname2" value="#{grds.email}">
</h:outputText>
</h:column>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitname3" value="Organisation" />
</f:facet>
<h:outputText id="grditname3" value="#{grds.sex}">
</h:outputText>
</h:column>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitname4" value="Business" />
</f:facet>
<h:outputText id="grditname4" value="#{grds.religion}">
</h:outputText>
</h:column>
<h:column>
<f:facet name="header">
<h:outputText id="iddd" value="---" />
</f:facet>
<h:commandLink value="Approve & Send mail" action="#{dealer.DealerApprovalSend}"   styleClass="grdeditbtn">
<f:setPropertyActionListener target="#{dealer.email}" value="#{grds.email}" />
<f:setPropertyActionListener target="#{dealer.dealerid}" value="#{grds.dealerid}" />
<f:setPropertyActionListener target="#{dealer.dealername}" value="#{grds.dealername}" />
<f:setPropertyActionListener target="#{dealer.address}" value="#{grds.address}" />
<f:setPropertyActionListener target="#{dealer.contact_no}" value="#{grds.contact_no}" />
<f:setPropertyActionListener target="#{dealer.organisation}" value="#{grds.organisation}" />
<f:setPropertyActionListener target="#{dealer.bussiness}" value="#{grds.bussiness}" />
</h:commandLink>
</h:column>
</h:dataTable>
<h:messages globalOnly="true"></h:messages>
</h:form>
</f:view>
</body>
</html>