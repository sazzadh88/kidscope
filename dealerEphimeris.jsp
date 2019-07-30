<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@page import="kids.dealer;import java.util.Map;import javax.faces.context.FacesContext;"%><html>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="stylesheet/style.css" />
<link rel="stylesheet" type="text/css" href="Scripts/iframe.css" />
<link rel="stylesheet" type="text/css" href="Scripts/calendar.css" />
<link rel="stylesheet" type="text/css" href="../stylesheet/general.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Kidscope - Admin Login</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<%
//Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();

String ipAddress=request.getRemoteAddr();

if (request.getParameter("dlr") == null)
{
//if(session.getAttribute("username")==null)

String redirectURL = "index.faces";
response.sendRedirect(redirectURL);
}
 
	else {%>
	 <%
	Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
	ses.put("dealern",request.getParameter("dlr"));
   	dealer dlr=new dealer();
	if(dlr.isValidDealerRun(request.getParameter("dlr"),request.getParameter("key"),ipAddress)==true)
	{
		session.setAttribute("dealerid",request.getParameter("dlr"));
		response.sendRedirect("ss.faces");
		
	}
	else
	{
		out.println("Invalid dealer");	
	}
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

              <td width="50%" class="h2">Welcome Administrator</td>
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
              <td width="20%" valign="top" class="rgt"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="h1">Admin Panel</td>
                  </tr>
                  <tr>

                    <td class="bg"><h:commandLink value="Enter Ephemeris" action="#{admin.ephimeris}" immediate="true" styleClass="gen"></h:commandLink></td>
                  </tr>
                  <tr>
                    <td class="bg"><h:commandLink value="Manage Dealership Request" action="#{admin.managedealerrequest}" immediate="true" styleClass="gen"></h:commandLink></td>
                  </tr>
                  <tr>
                    <td class="bg"><h:commandLink value="Manage Dealers" action="#{admin.managedealer}" immediate="true" styleClass="gen"></h:commandLink></td>

                  </tr>
                  <tr>
                    <td class="bg"><h:commandLink value=" Manage Users" action="#{admin.manageuser}" immediate="true" styleClass="gen"></h:commandLink></td>
                  </tr>
                  <tr>
                    <td class="bg"><h:commandLink value="Manage Reports" action="#{admin.managereport}" immediate="true" styleClass="gen"></h:commandLink></td>
                  </tr>
                  <tr>

                    <td class="bg">Logout</td>
                  </tr>
              </table></td>
              <td width="80%" height="560" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td><div id="admin"></div></td>
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
