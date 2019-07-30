<%@ page language="java" contentType="text/html; charset=" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" media="print" href="stylesheet/company1_print.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
 
<div id="TopLayer">
<a href="manageuser.faces" class="api" title="the JavaRanch JSP forum" target="_new">JSP</a>
			<a href="Javascript:self.print()">Print this page</a>
		</div>
<f:view>
<h:form>
       <h:panelGroup id="pan3" binding="#{customer.panel3}" rendered="true">
 
                              <h:panelGrid columns="2">
                           
                            Name:<h:outputText id="lblname" value="#{customer.name}"></h:outputText>
                                                              Birth:<h:outputText id="lblbirthdate" value="#{customer.birth_date}"> 
                                 <f:convertDateTime pattern="dd/MM/yyyy hh:mm:ss"/>
                                 </h:outputText > 
                             Star:<h:outputText id="lblutbirthtime" value="#{customer.payment}"></h:outputText> 
                                Latitude:<h:outputText id="lblplace" value="#{customer.latitude}"></h:outputText>
                         Longitude:<h:outputText id="lblcountry" value="#{customer.longitude}"></h:outputText>
                         Yoga:<h:outputText id="lblemail" value="#{customer.username}"></h:outputText> 
                               Dasa:<h:outputText id="lblpackage" value="#{customer.dasa}"></h:outputText>
                                Thithi:<h:outputText id="lblAddress" value="#{customer.address}"></h:outputText>     
                                 Ayanamsa:<h:outputText id="lblcontact" value="#{customer.contact_no}"></h:outputText>
                                 BirthNumber:<h:outputText id="lblpayment" value="#{customer.country}"></h:outputText> 
                                 Predictions:<h:outputText id="lblprediction" value="#{customer.numPrediction}"></h:outputText> 
                                 
                         
</h:panelGrid><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table   align="left" cellpadding="0" cellspacing="0" border="1"   width="200px" height="200px">
<tr> 
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.pos12}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.pos1}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.pos2}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.pos3}" styleClass="mal">
</h:outputText> </td>
</tr>

<tr> 
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.pos11}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" colspan="2" align="center" rowspan="2" bgcolor="white">
<h:outputText value="#{customer.starname1}">
</h:outputText> </td>

<td width="50px" height="50px" align="center"><h:outputText value="#{customer.pos4}" styleClass="mal">
</h:outputText> </td>
</tr>

<tr> 
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.pos10}" styleClass="mal"/> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.pos5}" styleClass="mal">
</h:outputText>
</td>

</tr>





<tr> 
<td width="125px" height="50px" align="center"><h:outputText value="#{customer.pos9}" styleClass="mal">
</h:outputText> </td>
<td width="125px" height="50px" align="center"><h:outputText value="#{customer.pos8}" styleClass="mal">
</h:outputText> </td>
<td width="125px" height="50px" align="center"><h:outputText value="#{customer.pos7}" styleClass="mal">
</h:outputText> </td>
<td width="125px" height="50px" align="center"><h:outputText value="#{customer.pos6}" styleClass="mal">
</h:outputText> </td>
</tr></table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table   align="left" cellpadding="0" cellspacing="0" border="1"   width="200px" height="200px">
<tr> 
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.npos12}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.npos1}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.npos2}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.npos3}" styleClass="mal">
</h:outputText> </td>
</tr>

<tr> 
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.npos11}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" colspan="2" align="center" rowspan="2" bgcolor="white">
<h:outputText value="Navamsam">
</h:outputText> </td>

<td width="50px" height="50px" align="center"><h:outputText value="#{customer.npos4}" styleClass="mal">
</h:outputText> </td>
</tr>

<tr> 
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.npos10}" styleClass="mal"/> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{customer.npos5}" styleClass="mal">
</h:outputText>
</td>

</tr>
<tr> 
<td width="125px" height="50px" align="center"><h:outputText value="#{customer.npos9}" styleClass="mal">
</h:outputText> </td>
<td width="125px" height="50px" align="center"><h:outputText value="#{customer.npos8}" styleClass="mal">
</h:outputText> </td>
<td width="125px" height="50px" align="center"><h:outputText value="#{customer.npos7}" styleClass="mal">
</h:outputText> </td>
<td width="125px" height="50px" align="center"><h:outputText value="#{customer.npos6}" styleClass="mal">
</h:outputText> </td>
                               <tr>
                                <td valign="top" id="dec">
</td>
</tr></table></td>
  </tr>
</table>
<img src="images/milestone_girl_mal.jpg">
    </h:panelGroup>
                        </h:form>
</f:view>
</body>
</html>