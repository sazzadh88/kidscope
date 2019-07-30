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
<link rel="stylesheet" type="text/css" href="Scripts/iframe.css" />
<link rel="stylesheet" type="text/css" href="Scripts/calendar.css" />
<script language="JavaScript" type="text/javascript" src="Scripts/mootools.js"></script>
 <script language="JavaScript" type="text/javascript" src="Scripts/calendar.js"></script>
<script language=javascript type='text/javascript'> 
window.onload = function() {
    //document.getElementById("forme1_myform:valueCh").disabled = false;
    var currentTime = new Date();
var month = currentTime.getMonth() + 1;
var day = currentTime.getDate();
var year = currentTime.getFullYear();
var hour = currentTime.getHours();
var min = currentTime.getMinutes();
var sec = currentTime.getSeconds();
    document.getElementById('bdate').value= day + "/" + month + "/" + year;
    document.getElementById('tdate').value= day + "/" + month + "/" + year;
    document.getElementById('tota').value = document.getElementById('frmrpt:hidtot').value;
    //document.getElementById('frmcustomer:sdtae').value=document.getElementById('bdate').value;
   // document.getElementById('frmcustomer:listboxhour').value= hour;
    //document.getElementById('frmcustomer:listboxmin').value= min;
   // document.getElementById('frmcustomer:listboxsec').value= sec;
    //alert(sec)
    //alert("here");
   
}
function check()
{
	if(document.getElementById('tota').value==false)
		{alert("Blank data !!! First generate records");
		return false;}
	else
		return true;
}
function assignval(pass){
 	
	document.getElementById('frmrpt:fdate').value=document.getElementById('bdate').value;
	document.getElementById('frmrpt:tdate').value=document.getElementById('tdate').value;
	document.getElementById('dispitem').style="display:block";
	//alert(document.getElementById('frmcustomer:sdtae').value);
	//return validateForm(); 
	//validateForm();
}
</script>
<script type="text/javascript">
    //<![CDATA[
		window.addEvent('domready', function() { 
			myCal1 = new Calendar({ bdate: 'd/m/Y' }, { direction: -1, tweak: {x: 6, y: 0} });
			
		});
	//]]>

  </script>
  <script type="text/javascript">
    //<![CDATA[
		window.addEvent('domready', function() { 
			myCal1 = new Calendar({ tdate: 'd/m/Y' }, { direction: -1, tweak: {x: 6, y: 0} });
			
		});
	//]]>

  </script>
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
<h:form id="frmrpt">

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
                <td width="50%" class="h2">Welcome:<h:outputLabel value="#{sessionScope.secadmin}"></h:outputLabel> </td>
                <td width="50%" align="right" class="h3" id="dec3"><h:commandLink action="#{admin.logout}" immediate="true" value="Logout"></h:commandLink></td>
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
            <td width="25" valign="top" align="left" style="frmtxt">&nbsp;</td>
            <td width="550" valign="top" align="left" style="frmtxt"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><table width="99%" border="0" cellspacing="0" cellpadding="0">
                <tr>
    <td height="5" colspan="7"> </td>
    </tr>
  <tr>
    <td width="12%" align="right" class="frmtxt" height="25">Dealer(s)</td>
    <td width="2%">&nbsp;</td>
    <td width="27%"><h:selectOneMenu id="fhf"  value="#{dealer.dealerid}"  styleClass="frm">
            <f:selectItems   value="#{kidsdatalist.dealername}"/></h:selectOneMenu> </td>
    <td width="6%">&nbsp;</td>
    <td width="2%">&nbsp;</td>
    <td width="33%">&nbsp;</td>
    <td width="18%">&nbsp;</td>
  </tr>
  <tr>
    <td align="right" class="frmtxt" height="25">From</td>
    <td align="center">:</td>
    <td><input	name="bdate" type="text" class="frm" id="bdate" onblur="assignval(this)" /> <h:inputHidden id="fdate" value="#{dealer.fromDate}" > <f:convertDateTime pattern="dd/MM/yyyy"/> </h:inputHidden></td>
    <td align="right" class="frmtxt">To</td>
    <td align="center">:</td>
    <td><input	name="tdate" type="text" class="frm" id="tdate" onblur="assignval(this)" /> <h:inputHidden id="tdate" value="#{dealer.toDate}" > <f:convertDateTime pattern="dd/MM/yyyy"/> </h:inputHidden></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td>&nbsp;</td>
    <td><h:commandButton value="Generate" styleClass="btn" onclick="assignval(this)" action="#{dealer.getDealerListsingle}"></h:commandButton></td>
    <td><a href="dlrrptprint.faces" onclick="return check()" target="_blank"> Print</a></td>
    
    <h:inputHidden   id="hidtot"  value="#{requestScope.isrecord}"/> 
    <input type="hidden" value="0" id="tota" />
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

</td>
              </tr>
              <tr>
                <td align="left">&nbsp;</td>
              </tr>
            </table>
            <table><tr><td>&nbsp;</td></tr>
              <tr>
                <td width="500">              <h:dataTable value="#{sessionScope.dealerslistsingle}" rendered="#{requestScope.isrecord}" var="grds"   border="0" rows="10"  headerClass="grdheader"  rowClasses="grdodd-row,grdeven-row" styleClass="gridstyle">
                <f:facet name="header">
                  <h:outputText id="idddaut" value="Transactions(Last 10 Records)" />
                </f:facet>
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
                  <h:outputText id="grditname2" value="#{grds.email}"></h:outputText>
                </h:column>
                <h:column>
                  <f:facet name="header">
                    <h:outputLabel for="lblitname" value="Address" />
                  </f:facet>
                  <h:outputText id="grditname" value="#{grds.address}"></h:outputText>
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
                  <h:outputText id="grditname3" value="#{grds.sex}"></h:outputText>
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
              </h:dataTable></td>
              </tr>
            </table>
            <table height="10" id="dispitem" name="diadspitem" style="display:block">
              <tr height="1">
                <td  height="1">&nbsp;</td>
              </tr>
              <tr height="1">
                <td width="82"  align="right"  class="frmtxt">Total Due</td>
                <td width="10">:</td>
                <td width="150" class="frmtxt" align="right" ><h:outputLabel value="#{dealer.totaldue}" > </h:outputLabel></td>
              </tr>
              <tr height="1">
                <td width="82" align="right" class="frmtxt">Amount Received</td>
                <td width="10">:</td>
                <td width="150" class="frmtxt" align="right" ><h:outputLabel value="#{dealer.payamount}" > </h:outputLabel></td>
              </tr>
              <tr height="1">
                <td width="82" align="right" class="frmtxt">Balance</td>
                <td width="10">:</td>
                <td width="150" class="frmtxt" align="right" ><h:outputLabel value="#{dealer.balaceamount}" > </h:outputLabel></td>
              </tr>
            </table>            
            <p>

              <h:messages globalOnly="true"></h:messages>
            </p>
            <p>&nbsp; </p></td>
            <td width="200" valign="top" align="left" style="frmtxt"></td>
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
