<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@page import="kids.dealer;import java.util.Map;import javax.faces.context.FacesContext;"%>

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
            <td colspan="2" background="images/btnbg.jpg">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="78%" height="550" valign="top">
             
              <table width="100%" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">    <%
            String ipAddress=request.getRemoteAddr();
            Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();         
if (request.getParameter("name") == null && (ses.get("userdealer")==null) )

{ %>
                    <MARQUEE>
                      <h:outputLabel value="Not a Valid Dealer"></h:outputLabel>
                                      </MARQUEE>
                    <%}else if((ses.get("userdealer")!=null)){%>
                
                            <h:outputLabel value="Your DealerNO:"></h:outputLabel>
                        <% out.println(ses.get("userdealer"));}else
{
	
//Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
//ses.put("usern",request.getParameter("name"));
session.setAttribute("usern",request.getParameter("name"));
dealer dlr=new dealer();
if(dlr.isValidDealer(request.getParameter("name"))==true)
{%>	
                Type your new password
                <h:inputSecret value="#{dealer.password}" ></h:inputSecret>
                        <h:commandButton value="Save Password" action="#{dealer.saveDealerPassword}"></h:commandButton>
                        <%}}
%></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
              </table>
              <p>&nbsp;                </p>
              <p>
            
              </p></td>
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