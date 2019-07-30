<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:view>
<h:form>
<h:dataTable value="#{sessionScope.dealerslistsingle}"   var="grds"   border="0" rows="1000"  >
<f:facet name="header"><h:outputText id="idddaut" value="Transactions" /></f:facet>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitCus" value="Dealer Name" />
</f:facet>
<h:outputText id="grditno" value="#{grds.dealername}" />
</h:column>

<h:column  >
<f:facet name="header">
<h:outputLabel for="lblitno" value="Customer" />
</f:facet>
<h:outputText id="grditffno" value="#{grds.customerName}" />
</h:column>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitname2" value="Mother Name" />
</f:facet>
<h:outputText id="grditname2" value="#{grds.email}"></h:outputText>
</h:column>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitname" value="Address" />
</f:facet>
<h:outputText id="grditname" value="#{grds.address}"></h:outputText>
</h:column>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitname1" value="Date of Delivery" />
</f:facet>
<h:outputText id="grditname1" value="#{grds.birthDate}">
<f:convertDateTime pattern="dd/MM/yyyy"/>
</h:outputText>
</h:column>

<h:column>
<f:facet name="header">
<h:outputLabel for="lblitname3" value="Sex" />
</f:facet>
<h:outputText id="grditname3" value="#{grds.sex}"></h:outputText>
</h:column>
<h:column>
<f:facet  name="header">
<h:outputLabel for="lblitnametrdate" value="Created Date" />
</f:facet>
<h:outputText id="grditnametrdate" value="#{grds.createdDate}">
<f:convertDateTime pattern="dd/MM/yyyy"/>
</h:outputText>
</h:column>
<h:column>
<f:facet name="header">
<h:outputText id="iddd" value="---" />
</f:facet>
<h:commandLink value="" action="#{dealer.DealerApprovalSend}"   styleClass="grdeditbtn">
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
<br>
<table height="10" id="dispitem" name="diadspitem" style="display:block">
              <tr height="1">
                <td  height="1">&nbsp;</td>
              </tr>
              <tr height="1">
                <td width="82"  align="right"  class="frmtxt">Total Due</td>
                <td width="10">:</td>
                <td width="150" class="frmtxt" align="right" ><h:outputLabel value="#{dealer.totaldue}" > </h:outputLabel></td>
              </tr>
              <tr height="1">
                <td width="82" align="right" class="frmtxt">Amount Received</td>
                <td width="10">:</td>
                <td width="150" class="frmtxt" align="right" ><h:outputLabel value="#{dealer.payamount}" > </h:outputLabel></td>
              </tr>
              <tr height="1">
                <td width="82" align="right" class="frmtxt">Balance</td>
                <td width="10">:</td>
                <td width="150" class="frmtxt" align="right" ><h:outputLabel value="#{dealer.balaceamount}" > </h:outputLabel></td>
              </tr>
            </table>
</h:form>
</f:view>
</body>
</html>