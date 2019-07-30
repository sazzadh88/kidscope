<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="stylesheet/style.css" />
<link rel="stylesheet" type="text/css" href="Scripts/iframe.css" />
<link rel="stylesheet" type="text/css" href="Scripts/calendar.css" />
<link rel="stylesheet" type="text/css" href="../stylesheet/general.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Kidscope - Dealer Login page</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
<%
//Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();

//if(ses.get("dealern")!=null)
	if(session.getAttribute("dealerid")!=null)
{
	
//if(session.getAttribute("username")==null)

String redirectURL = "adminlogin.faces";
response.sendRedirect(redirectURL);
}
%>
<f:view>
<h:form>


<table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>

        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/title.jpg" width="331" height="115" /></td>
          </tr>
          
        </table></td>
      </tr>
      <tr>
        <td height="28" background="images/btnbg.jpg"><table width="98%" border="0" align="center" cellpadding="2" cellspacing="2">
            <tr>

              <td width="50%" class="h2"><h:outputText value="Welcome :#{sessionScope.DealerName}"></h:outputText></td>
              <td width="50%" align="right" class="h3">Logout</td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td height="5"></td>
      </tr>

      <tr>
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="201" valign="top" class="rgt"><table width="200px" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="h1">Admin Panel</td>
                  </tr>
                  <tr>

                    <td class="bg"><h:commandLink value="Ephimeris" action="#{admin.ephimeris}" immediate="true" styleClass="gen"></h:commandLink></td>
                  </tr>
                  <tr>
                    <td class="bg"><h:commandLink value="Reports" action="#{admin.managedealer}" immediate="true" styleClass="gen"></h:commandLink></td>
                  </tr>
                  <tr>
                    
                  </tr>
                  <tr>
                    
                  </tr>
                  <tr>
                    
                  </tr>
                  <tr>

                    
                  </tr>
              </table></td>
              <td width="10" height="560" valign="top"><table width="98%" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                
                </tr>
              </table></td>
              <td valign="top"></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td height="21" bgcolor="#006fb4"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="39%" class="cpr">Copyright  2011 Famiconn Integra. All Rights Reserved.</td>
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

