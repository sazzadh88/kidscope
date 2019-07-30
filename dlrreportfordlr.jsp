<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@page import="java.util.Map"%>
<%@page import="javax.faces.context.FacesContext"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<head>
<title>Welcome to Kidscope</title>
<link rel="stylesheet" type="text/css" href="stylesheet/style.css" />
</head>
<body>
<%
Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();

if(ses.get("secdealerno")==null)
{
//if(session.getAttribute("username")==null)

String redirectURL = "index.faces";
response.sendRedirect(redirectURL);
}
%>
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
                <td width="50%" class="h2"><h:outputText value="Welcome :#{sessionScope.secdealername}"></h:outputText></td>
                <td width="50%" align="right" class="h3" id="dec3"><h:commandLink action="#{admin.logout}" value="Logout"></h:commandLink></td>
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
                          <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                <td width="94%" id="dec1"><h:commandLink value="Horoscope" action="#{admin.ephimeris}" immediate="true" ></h:commandLink></td>
                              </tr>
                          </table></td>
                        </tr>
                 
                        <tr>
                          <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                <td width="94%" id="dec1"><h:commandLink value="Reports" action="#{admin.dealerrpt}" immediate="true" ></h:commandLink></td>
                              </tr>
                          </table></td>
                        </tr>
                      </table></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><img src="images/lnkbtm.jpg" width="190" height="15" /></td>
              </tr>
            </table></td>
            <td width="78%" valign="top" align="center" style="frmtxt"><table><tr><td>&nbsp;</td></tr></table>
     
            From: <h:inputText value="#{dealer.fromDate}" styleClass="frm"> <f:convertDateTime pattern="dd/MM/yyyy"/> </h:inputText>
            To: <h:inputText value="#{dealer.toDate}" styleClass="frm"> <f:convertDateTime pattern="dd/MM/yyyy"/> </h:inputText>
&nbsp;<h:commandButton value="Generate" styleClass="btn" action="#{dealer.getDealerListsinglefordlr}"></h:commandButton></br>
<table><tr><td>&nbsp;</td></tr></table>
<h:dataTable value="#{sessionScope.dealerslistsingle}" rendered="#{sessionScope.isrecord}" var="grds"  border="0" rows="1000"  headerClass="grdheader"  rowClasses="grdodd-row,grdeven-row" styleClass="gridstyle">
<f:facet name="header"><h:outputText id="idddaut" value="Dealer: #{sessionScope.secdealername}, Transcation details" /></f:facet>
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
<f:convertDateTime pattern="dd/MM/yyyy"/>
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
<f:convertDateTime pattern="dd/MM/yyyy"/>
</h:outputText>
</h:column>
<h:column>
<f:facet name="header">
<h:outputText id="iddd" value="Previous Predictions" />
</f:facet>
<h:commandLink id="button"
																				action="#{grahanila.getplanetPosition}" immediate="true"  	target="_blank" styleClass="btn" value="View ">
																					<f:setPropertyActionListener
																					value="report"
																					target="#{grahanila.intesave}" />
																				<f:setPropertyActionListener
																					value="#{grds.birthDate}"
																					target="#{grahanila.birth_date}" />
																				<f:setPropertyActionListener
																					value="#{grds.birth_timehour}"
																					target="#{grahanila.birth_timehour}" />
																				<f:setPropertyActionListener
																					value="#{grds.birth_timemin}"
																					target="#{grahanila.birth_timemin}" />
																				<f:setPropertyActionListener
																					value="#{grds.birth_timesec}"
																					target="#{grahanila.birth_timesec}" />
																				<f:setPropertyActionListener
																					value="#{grds.placeid}"
																					target="#{grahanila.placeid}" />
																				<f:setPropertyActionListener
																					value="#{grds.languageid}"
																					target="#{grahanila.language}" />
																				<f:setPropertyActionListener value="#{grds.sex}"
																					target="#{grahanila.sex}" />
																				<f:setPropertyActionListener
																					value="#{grds.email}"
																					target="#{grahanila.mothername}" />
																					<f:setPropertyActionListener
																					value="#{grds.religion}"
																					target="#{grahanila.kidsname}" />
																				<f:setPropertyActionListener
																					value="#{grds.customerName}"
																					target="#{grahanila.fathername}" />
																				<f:setPropertyActionListener
																					value="#{grds.address}"
																					target="#{grahanila.address}" />
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
