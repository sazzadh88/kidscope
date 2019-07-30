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
<script language=javascript type='text/javascript'> 
function processNumber(inputField) {
    try {
        var inpVal = parseInt(document.getElementById('frmcustomer:txtAmount').value, 10);
        if (isNaN(inpVal)) {
            var msg = "Please enter a number only.";
            var err = new Error(msg);
            if (!err.message) {
                err.message = msg;
            }
            throw err;
        }
    } catch (e) {
        alert(e.message);
        inputField.focus();
        inputField.select();
    }
}
function handleEvent(oEvent) {
   // var oTextbox = "";
   // oTextbox.value += "\n>" + oEvent.type;
   // oTextbox.value += "\n    target is " + (oEvent.target || oEvent.srcElement).id;
   // oTextbox.value += "\n    keyCode is " + oEvent.keyCode;
    alert(oEvent.keyCode);
}
function displayunicode(e){
	var unicode=e.keyCode? e.keyCode : e.charCode
		//	alert (unicode);
	if(unicode=='13')
	{
		document.getElementById('frmcustomer:fhf').focus();

		}
	}
// this.select()
function IsNumeric(strString) //  check for valid numeric strings	
{
	var str=document.getElementById('frmcustomer:txtAmount').value;
	if(!/\D/.test(document.getElementById('frmcustomer:txtAmount').value)) 
	{
		return true;//IF NUMBER
	}
	else if(/^\d+\..\d+$/.test(document.getElementById('frmcustomer:txtAmount').value)) 

		{return true;//IF A DECIMAL NUMBER HAVING AN INTEGER ON EITHER SIDE OF THE DOT(.)
		}
	else
	{ 
		document.getElementById('frmcustomer:txtAmount').value=str.substring(0,str.length-1);
		IsNumeric(str.substring(0,str.length-1));
		return false;
	}
}
function validateForm()
{
	var rval=false;
	 var rval1=false; var rval2=false; 
                                                   	
		   if (document.getElementById('frmcustomer:fhf').value.toString()=='')
		    {	
			   rval1=false;
			document.getElementById('spdealer').innerHTML = '*';
		    }
			else
			{	
		    rval1= true;
		    document.getElementById('spdealer').innerHTML = '';
			} 
			if(document.getElementById('frmcustomer:txtAmount').value.toString()=='' || document.getElementById('frmcustomer:txtAmount').value <= 0 )
			{rval2=false;
				document.getElementById('spAmount').innerHTML = '*';}
				else
				{	
			    rval2= true;
			    document.getElementById('spAmount').innerHTML = '';
				} 
			 if(rval1==false || rval2==false)
				 rval=false;
			 else
				 rval=true;
				//document.getElementById('frmcustomer:buttonprc').disabled = true;
//}
	 return rval;
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
response.sendRedirect(redirectURL);
}
%>
<f:view>
<h:form id="frmcustomer">

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
            <td width="220" height="550" valign="top" class="rgt"><table width="190" border="0" align="center" cellpadding="0" cellspacing="0">
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
            <td width="320" valign="top" align="left" style="frmtxt"><table height="1"> <tr height="1"><td width="5" height="1">&nbsp;</td>
            </tr></table>
                             
                  
                  
                  <h:panelGroup id="hp1"  binding="#{dealer.hpg1}">
                  <table width="300   border="0" cellpadding="0" cellspacing="0">
                  <tr>

                  <td height="5"></td>
                  </tr>
                  <tr>
                    <td height="100" align="right"  valign="top"><table width="100%" border="0" cellspacing="2" cellpadding="2">
                      <tr>
                        <td width="70" align="right" class="frmtxt">Dealer</td>
                        <td width="1%" align="right" class="frmtxt">:</td>
                        <td width="130" align="left" class="frmtxt"><h:selectOneMenu id="fhf" onchange="validateForm()" value="#{dealer.dealerid}"  styleClass="frm">
            <f:selectItems   value="#{kidsdatalist.dealernameSingle}"/></h:selectOneMenu> </td>
                        <td width="130" class="frmtxt"><span id="spdealer" class="message"></span></td>
                      </tr>
                        <tr>
                        <td align="right" valign="top" class="frmtxt">Amount</td>
                        <td align="right" valign="top" class="frmtxt">:</td>
                        <td class="frmtxt" align="left">
                          <h:inputText onkeyup ="return IsNumeric(this),validateForm()" id="txtAmount"  value="#{dealer.amount}" styleClass="frm" style="width: 130px"    ></h:inputText>                        </td>
                        <td width="47%" class="frmtxt"><span id="spAmount" class="message"></span></td>
                        <td class="frmtxt">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="right" valign="top" class="frmtxt">Remarks</td>
                        <td align="right" valign="top" class="frmtxt">:</td>
                        <td class="frmtxt" align="left">
                          <h:inputTextarea  onkeyup="displayunicode(event)" id="txtaddress" value="#{dealer.remark}" styleClass="frm" style="width: 130px"    ></h:inputTextarea>                        </td>
                        <td width="47%" class="frmtxt"><span id="strengthaddress" class="message"></span></td>
                        <td class="frmtxt">&nbsp;</td>
                      </tr>
                                
                                  <tr><td align="left" class="frmtxt">&nbsp;</td>
                        <td align="left" class="frmtxt">&nbsp;</td>
                         <td align="left"  class="frmtxt"><h:commandButton  onclick="return validateForm()"   id="save" value="Save" styleClass="btn" action="#{dealer.cashcollect}"></h:commandButton></td>
   
                   
                        <td >                     </td>

                        <td >&nbsp;</td>
                      </tr>
                        <tr>
                                    <td align="left" class="frmtxt">&nbsp;</td>
                                    <td align="left" class="frmtxt">&nbsp;</td>
                                    <td align="left"  class="frmtxt"><h:messages globalOnly="true"></h:messages></td>
                                    <td >&nbsp;</td>
                                    <td >&nbsp;</td>
                                </tr>
                    </table>
                    
                    </td>
                  </tr>
                  <tr>
                    <td height="5" width="800">
                    <table><tr><td width="50" ></td><td><h:dataTable value="#{sessionScope.dealercashreceive}" rendered="#{requestScope.isrecord}" var="grds"  border="0" rows="1000"  headerClass="grdheader"  rowClasses="grdodd-row,grdeven-row" styleClass="gridstyle">
<f:facet name="header"><h:outputText id="idddaut" value="Transactions" /></f:facet>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitCus" value="Amount" />
</f:facet>
<h:outputText id="grditno" value="#{grds.amount}" />
</h:column>

<h:column  >
<f:facet name="header">
<h:outputLabel for="lblitno" value="date" />
</f:facet>
<h:outputText id="grditffno" value="#{grds.createdDate}" >
<f:convertDateTime pattern="dd/MM/yyyy" />
</h:outputText>
</h:column>
<h:column>
<f:facet name="header">
<h:outputLabel for="lblitname2" value="Remark" />
</f:facet>
<h:outputText id="grditname2" value="#{grds.remark}">
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
</h:dataTable>
                    </td></tr></table>
                    </td>
                  </tr>
                  </table>
                  <p>&nbsp;</p>
                  </h:panelGroup>
                  <h:panelGroup id="hp2" binding="#{dealer.hpg2}"  rendered="false">
                      </h:panelGroup>
               
                      
 </td>
 
 <td width="462" valign="top"class="frmtxt"><table height="10"> <tr height="1"><td width="5" height="1">&nbsp;</td>
            </tr>
     <tr height="1">
       <td width="150"  align="right"  class="frmtxt">Total Due</td>
       <td width="5">:</td>
        <td width="50" class="frmtxt" align="right" ><h:outputLabel value="#{dealer.totaldue}" > </h:outputLabel></td>
     </tr>
      <tr height="1">
       <td width="150" align="right" class="frmtxt">Amount Received</td>
       <td width="5">:</td>
        <td width="50" class="frmtxt" align="right" ><h:outputLabel value="#{dealer.payamount}" > </h:outputLabel></td>
     </tr>
      <tr height="1">
       <td width="150" align="right" class="frmtxt">Balance</td>
       <td width="5">:</td>
        <td width="50" class="frmtxt" align="right" ><h:outputLabel value="#{dealer.balaceamount}" > </h:outputLabel></td>
     </tr>
 </table>
 </td>
 
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
