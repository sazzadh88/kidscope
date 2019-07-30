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
<script language=javascript type='text/javascript'> 
function processPassword() {
   
        var pass =document.getElementById('frmPass:txtpass').value.toString();
        var cpass =document.getElementById('frmPass:txtconfirmpass').value.toString();

        if (pass=='' )
        {
        	document.getElementById('spanerror').innerHTML = 'Blank Password';
        	return false;
        } 
        else if (pass.length<8)
        {
        	document.getElementById('spanerror').innerHTML = 'Minimum 8 Charcters';
        	return false;
        }   
        else if (pass==cpass && pass!='' && cpass!=''  )
        {document.getElementById('spanerror').innerHTML = '';
            return true;} 
        else
        	{document.getElementById('spanerror').innerHTML = 'Password Mismatch';
        	return false;
        	}
     
}
</script>
</head>
<body>
<%
Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();

if(ses.get("secadmin")==null)
{
//if(session.getAttribute("username")==null)

String redirectURL = "adminlogin.faces";
//response.sendRedirect(redirectURL);
}
%>
<f:view>
<h:form id="frmPass">
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
 
 
                  </div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><table width="600" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td  class="frmtxt" width="150"><div align="right">New Password</div></td>
                      <td width="25"><div align="center">:</div></td>
                      <td class="frmtxt"  width="150"><h:inputSecret value="#{admin.password}" styleClass="frm" onkeyup ="processPassword()" id="txtpass"/></td>
                    </tr>
                       <tr>
                      <td height="5"></td>
                    </tr>
                    <tr>
                      <td class="frmtxt"> <div align="right">Confirm Password</div></td>
                      <td><div align="center">:</div></td>
                      <td><h:inputSecret styleClass="frm" onkeyup ="processPassword()" id="txtconfirmpass"/> </td>
                      <td><span id="spanerror"  class="message"></span> </td>
                    </tr>
                    <tr>
                    <td height="8"></td>
                    </tr>
                       <tr>
                       <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td><h:commandButton onclick="return processPassword()" styleClass="btn" action="#{admin.resetPasswordAdmin}" value="Reset"/></td>
                       
                      
                    </tr>
                    <tr >
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td width="150"><h:messages styleClass="message" globalOnly="true"/> </td>
                    </tr>
                    
                  </table></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  
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