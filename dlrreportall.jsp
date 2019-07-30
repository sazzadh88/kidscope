<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<head>
<title>Welcome to Kidscope</title>
<link rel="stylesheet" type="text/css" href="stylesheet/style.css" />
</head>
<body>
<f:view>
<h:form>

<table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="217"><table width="190" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td align="center"><img src="images/title.jpg" width="192" height="56" /></td>
              </tr>
            </table></td>
            <td width="78%">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" background="images/btnbg.jpg"><table width="98%" border="0" align="center" cellpadding="2" cellspacing="2">
              <tr>
                <td width="50%" class="h2">Welcome </td>
                <td width="50%" align="right" class="h3">Logout</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="22%" height="550" valign="top" class="rgt"><table width="190" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td><img src="images/lnktp.jpg" width="190" height="15" /></td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td class="bg" id="dec1"><h:commandLink value="Manage Dealership Request" action="#{admin.managedealerrequest}" immediate="true" styleClass="gen"></h:commandLink></td>
                  </tr>
                  <tr>
                    <td class="bg" id="dec1"><h:commandLink value="Manage Dealers" action="#{admin.managedealer}" immediate="true" styleClass="gen"></h:commandLink></td>
                  </tr>
                      </table></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><img src="images/lnkbtm.jpg" width="190" height="15" /></td>
              </tr>
            </table></td>
            <td width="78%" valign="top" align="center" style="frmtxt"><table><tr><td>&nbsp;</td></tr></table>From: <h:inputText value="#{dealer.fromDate}" styleClass="frm"> <f:convertDateTime pattern="dd/MM/yyyy"/> </h:inputText>
To: <h:inputText value="#{dealer.toDate}" styleClass="frm"> <f:convertDateTime pattern="dd/MM/yyyy"/> </h:inputText>
&nbsp;<h:commandButton value="Generate" styleClass="btn" action="#{dealer.getDealerList}"></h:commandButton></br>
<table><tr><td>&nbsp;</td></tr></table>
<h:dataTable value="#{sessionScope.dealerslist}" rendered="#{sessionScope.isrecord}" var="grds"  border="0" rows="100"  headerClass="grdheader"  rowClasses="grdodd-row,grdeven-row" styleClass="gridstyle">
<f:facet name="header"><h:outputText id="idddaut" value="Dealer Transaction" /></f:facet>
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
<h:outputText id="grditname2" value="#{grds.email}">
</h:outputText>
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
<h:outputLabel for="lblitname1" value="Date of Delivery" />
</f:facet>
<h:outputText id="grditname1" value="#{grds.birthDate}">
</h:outputText>
</h:column>

<h:column>
<f:facet name="header">
<h:outputLabel for="lblitname3" value="Sex" />
</f:facet>
<h:outputText id="grditname3" value="#{grds.sex}">
</h:outputText>
</h:column>
<h:column>
<f:facet  name="header">
<h:outputLabel for="lblitnametrdate" value="Created Date" />
</f:facet>
<h:outputText id="grditnametrdate" value="#{grds.createdDate}">
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
<h:messages globalOnly="true"></h:messages></td>
<table><tr><td>&nbsp;</td></tr></table>
          </tr>
        </table></td>
      </tr>
      
      <tr>
        <td height="21" bgcolor="#006fb4"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="39%" class="cpr">Copyright © 2011 Famiconn Integra. All Rights Reserved.</td>
            <td width="31%" align="center" class="cpr">Best viewed with 1024 x 768 Resolution</td>
            <td width="30%" align="right" class="cpr" id="dec2">Powered by <a href="http://www.cybergreensolutions.com" target="_blank">CyberGreen Solutions</a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</h:form>
</f:view>
</body>
</html>
