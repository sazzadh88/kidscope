<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@page import="java.util.Map"%>
<%@page import="javax.faces.context.FacesContext"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="stylesheet/style.css" />
<title>Insert title here</title>
</head>
<body>
<f:view>
<%
Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();

if(ses.get("uname")!=null)
{%>
 
	<f:loadBundle basename="kids.kidsprop"   var="locale" />
	<%
}else
{%>
<f:loadBundle basename="kids.kidspropmala_ml_IN" var="locale" />
	<%}
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<h:form>
       <h:panelGrid columns="2">
       
              <h:outputText styleClass="mal1"  value="#{locale.MrorMrs}"></h:outputText>
                <h:outputText id="lblname" value="#{kidAstro.mrorMrs}"></h:outputText>
                     <h:outputText   value="#{locale.DateofBirth}"></h:outputText>
                     <h:outputText id="lblbirthdate" value="#{kidAstro.dateofBirth}"> 
                         <f:convertDateTime pattern="dd/MM/yyyy"/>
                             </h:outputText> 
                             <h:outputText   value="#{locale.DayofBirth}"></h:outputText><h:outputText id="lblutbirthtime" value="#{kidAstro.dayofBirth}"></h:outputText> 
                                 <h:outputText   value="#{locale.TimeOfBirth}"></h:outputText><h:outputText id="lblplace" value="#{kidAstro.timeOfBirth}">
                                <f:convertDateTime pattern="hh:mm:ss"/>
                                </h:outputText>
                                 <h:outputText   value="#{locale.Week}"></h:outputText><h:outputText id="lblweek" value="#{kidAstro.dasa}"></h:outputText>
                                
                          <h:outputText   value="#{locale.sex}"></h:outputText><h:outputText id="lblcountry" value="#{kidAstro.sex}"></h:outputText>
                         <h:outputText   value="#{locale.PlaceOfBirth}"></h:outputText><h:outputText id="lblemail" value="#{kidAstro.placeOfBirth}"></h:outputText> 
                                <h:outputText   value="#{locale.Siblings}"></h:outputText><h:outputText id="lblpackage" value="#{kidAstro.siblings}"></h:outputText>
                                 <h:outputText   value="#{locale.Language}"></h:outputText><h:outputText id="lblAddress" value="#{kidAstro.language}"></h:outputText>     
                                  <h:outputText   value="#{locale.PosNo}"></h:outputText><h:outputText id="lblcontact" value="#{kidAstro.posNo}"></h:outputText>
                                 <h:outputText   value="#{locale.PosName}"></h:outputText><h:outputText id="lblpayment" value="#{kidAstro.posName}"></h:outputText> 
                                  <h:outputText   value="#{locale.KidsStar}"></h:outputText><h:outputText id="lblprediction" value="#{kidAstro.kidsStar}"></h:outputText> 
                                 <h:outputText   value="#{locale.thithi}"></h:outputText><h:outputText id="lblAddress1" value="#{kidAstro.thithi}"></h:outputText>     
                                  <h:outputText   value="#{locale.karana}"></h:outputText><h:outputText id="lblcontact1" value="#{kidAstro.karana}"></h:outputText>
                                 <h:outputText   value="#{locale.yoga}"></h:outputText><h:outputText id="lblpayment1" value="#{kidAstro.yoga}"></h:outputText> 
                                  <h:outputText   value="#{locale.dasa}"></h:outputText><h:outputText id="lblprediction1" value="#{kidAstro.dasa}"></h:outputText> 
                                 
                         
</h:panelGrid><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table   align="left" cellpadding="0" cellspacing="0" border="1"   width="200px" height="200px">
<tr> 
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.pos12}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.pos1}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.pos2}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.pos3}" styleClass="mal">
</h:outputText> </td>
</tr>

<tr> 
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.pos11}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" colspan="2" align="center" rowspan="2" bgcolor="white">
<h:outputText value="#{locale.grahanila}">
</h:outputText> </td>

<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.pos4}" styleClass="mal">
</h:outputText> </td>
</tr>

<tr> 
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.pos10}" styleClass="mal"/> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.pos5}" styleClass="mal">
</h:outputText>
</td>

</tr>





<tr> 
<td width="125px" height="50px" align="center"><h:outputText value="#{kidAstro.pos9}" styleClass="mal">
</h:outputText> </td>
<td width="125px" height="50px" align="center"><h:outputText value="#{kidAstro.pos8}" styleClass="mal">
</h:outputText> </td>
<td width="125px" height="50px" align="center"><h:outputText value="#{kidAstro.pos7}" styleClass="mal">
</h:outputText> </td>
<td width="125px" height="50px" align="center"><h:outputText value="#{kidAstro.pos6}" styleClass="mal">
</h:outputText> </td>
</tr></table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table   align="left" cellpadding="0" cellspacing="0" border="1"   width="200px" height="200px">
<tr> 
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.npos12}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.npos1}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.npos2}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.npos3}" styleClass="mal">
</h:outputText> </td>
</tr>

<tr> 
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.npos11}" styleClass="mal">
</h:outputText> </td>
<td width="50px" height="50px" colspan="2" align="center" rowspan="2" bgcolor="white">
<h:outputText value="#{locale.Navamsam}">
</h:outputText> </td>

<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.npos4}" styleClass="mal">
</h:outputText> </td>
</tr>

<tr> 
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.npos10}" styleClass="mal"/> </td>
<td width="50px" height="50px" align="center"><h:outputText value="#{kidAstro.npos5}" styleClass="mal">
</h:outputText>
</td>

</tr>
<tr> 
<td width="125px" height="50px" align="center"><h:outputText value="#{kidAstro.npos9}" styleClass="mal">
</h:outputText> </td>
<td width="125px" height="50px" align="center"><h:outputText value="#{kidAstro.npos8}" styleClass="mal">
</h:outputText> </td>
<td width="125px" height="50px" align="center"><h:outputText value="#{kidAstro.npos7}" styleClass="mal">
</h:outputText> </td>
<td width="125px" height="50px" align="center"><h:outputText value="#{kidAstro.npos6}" styleClass="mal">
</h:outputText> </td>
                               <tr>
                                <td valign="top" id="dec">
</td>
</tr></table></td>
  </tr>
</table>
 
                        </h:form>
</f:view>
</body>
</html>