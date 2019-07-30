<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@page import="java.util.Map"%>
<%@page import="javax.faces.context.FacesContext"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script type="text/javascript" src="sha1.js"></script>
 <link rel="stylesheet" type="text/css" href="stylesheet/style.css" />
</head>
<body>
<%
Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();

if(ses.get("secadmin")==null)
{
//if(session.getAttribute("username")==null)

String redirectURL = "adminlogin.faces";
response.sendRedirect(redirectURL);

}
%>
<f:view>
<h:form id="AAA">
<table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>

        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left"><img src="images/title.jpg" width="192" height="56" /></td>
          </tr>
          
        </table></td>
      </tr>
      <tr>
        <td height="28" background="images/btnbg.jpg"><table width="98%" border="0" align="center" cellpadding="2" cellspacing="2">
            <tr>

              <td width="50%" class="h2"><h:outputText value="Welcome :#{sessionScope.secadmin}"></h:outputText></td>
              <td width="50%" align="right" class="h3"><h:commandLink action="#{admin.logout}" immediate="true" value="Logout"></h:commandLink></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td height="5"></td>
      </tr>

      <tr>
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="20%" valign="top" class="rgt"><table width="190" border="0" align="center" cellpadding="0" cellspacing="0">
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
                    <tr>
                    <td class="bg" id="dec1"><h:commandLink value="Password Reset"   action="#{admin.resetpassword}" immediate="true" styleClass="gen"></h:commandLink></td>
                  </tr>
                  <tr>
                    <td class="bg" id="dec1"><h:commandLink value="Cash Update"   action="#{admin.resevecash}" immediate="true" styleClass="gen"></h:commandLink></td>
                  </tr>
                      </table></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><img src="images/lnkbtm.jpg" width="190" height="15" /></td>
              </tr>
            </table></td>
              <td width="80%" height="560" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td><div id="admin">
<h:messages globalOnly="true"></h:messages>
<h:dataTable value="#{sessionScope.dealersforapproval}" rendered="true" var="grds"  border="1" rows="100" headerClass="grdheader"  rowClasses="grdodd-row,grdeven-row" styleClass="gridstyle">
<f:facet name="header"><h:outputText id="idddaut" value="Dealer Enqury" /></f:facet>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitno" value="Dealer Name" />
</f:facet>
<h:outputText id="grditno" value="#{grds.dealername}" />
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
<h:outputText id="grditname1" value="#{grds.contact_no}">
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
<h:outputText id="grditname3" value="#{grds.organisation}">
</h:outputText>
</h:column>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitname4" value="Business" />
</f:facet>
<h:outputText id="grditname4" value="#{grds.bussiness}">
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
                  </div></td>
                </tr>
              </table></td>

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