<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@page import="kids.dealer;import java.util.Map;import javax.faces.context.FacesContext;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="stylesheet/style.css" />
</head>
<body>
<%
//Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();

if (session.getAttribute("dealerid")== null)
{
//if(session.getAttribute("username")==null)

String redirectURL = "index.faces";
//response.sendRedirect(redirectURL);
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
            <td width="217" align="center"><table width="190" border="0" align="center" cellpadding="0" cellspacing="0">
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
                <td width="50%" align="right" class="h3"><h:commandLink value="Logout" action="#{admin.logout}" immediate="true" ></h:commandLink></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="22%" height="450" valign="top" class="rgt"><table width="190" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td><img src="images/lnktp.jpg" width="190" height="15" /></td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                            <td width="94%" id="dec1"><h:commandLink value="Horoscope" action="#{admin.ephimeris}" disabled="false" ></h:commandLink></td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                            <td width="94%" id="dec1"><h:commandLink value="Customer Details" action="#{admin.dealerrpt}" disabled="true"></h:commandLink></td>
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
              <tr>
                <td><img src="images/lnkbtm.jpg" width="190" height="15" /></td>
              </tr>
            </table>
            </td>
            <td width="78%" valign="top">&nbsp;</td>
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
