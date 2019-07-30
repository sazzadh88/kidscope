<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@page import="java.util.Map"%>
<%@page import="javax.faces.context.FacesContext"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="stylesheet/style.css" />
<link rel="stylesheet" type="text/css" href="Scripts/iframe.css" />
<link rel="stylesheet" type="text/css" href="Scripts/calendar.css" />
<%@ page isErrorPage="true" %>
 <%@ page errorPage="error.jsp" %>
<script language="JavaScript" type="text/javascript" src="Scripts/mootools.js"></script>
 <script language="JavaScript" type="text/javascript" src="Scripts/calendar.js"></script>
 <script type="text/javascript" src="md5.js"></script>
<script type="text/javascript" src="jcap.js"></script>
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
    document.getElementById('frmcustomer:hmenuplace1').value= 4020;
    document.getElementById('frmcustomer:sdtae').value=document.getElementById('bdate').value;
    document.getElementById('frmcustomer:listboxSiblings').value='ki';
    document.getElementById('divbtnprc').style.visibility='hidden';
    document.getElementById('divbtnlifeprc').style.visibility='hidden';
   // document.getElementById('frmcustomer:listboxhour').value= hour;
    //document.getElementById('frmcustomer:listboxmin').value= min;
   // document.getElementById('frmcustomer:listboxsec').value= sec;
    //alert(sec)
    //alert("here");
    createCookie();
}
function createCookie() {
	var name='saji cook',value='xaaaaa',days=4;
	if (days) {
		var date = new Date();
		date.setTime(date.getTime()+(days*24*60*60*1000));
		var expires = "; expires="+date.toGMTString();
	}
	else var expires = "";
	document.cookie = name+"="+value+expires+"; path=/";
}

function assignval(pass){
 	
	document.getElementById('frmcustomer:sdtae').value=document.getElementById('bdate').value;
	//alert(document.getElementById('frmcustomer:sdtae').value);
	return validateForm(); 
	//validateForm();
}


function validateForm()
{
	var rval=false;var rval9=false;
	 var rval1=false; var rval2=false; var rval3=false; var rval4=false; 
	 var rval5=false; var rval6=false; var rval7=false; var rval8=false;
	 
	 if(document.getElementById('frmcustomer:txtpack').value.toString()=='0') 
	 {document.getElementById('divbtnprc').style.visibility='visible'; 
	 document.getElementById('divbtnlifeprc').style.visibility='visible'; 
	  } 
	 else if(document.getElementById('frmcustomer:txtpack').value.toString()=='2') 
	 {document.getElementById('divbtnlifeprc').style.visibility='visible'; 
	  } 
	 else if(document.getElementById('frmcustomer:txtpack').value.toString()=='1') 
	 {document.getElementById('divbtnprc').style.visibility='visible'; 
	  }                                         	
		   if (document.getElementById('frmcustomer:txtfather').value.toString()=='')
		    {	
			   rval1=false;
			document.getElementById('sp1').innerHTML = '*';
		    }
			else
			{	
		    rval1= true;
		    document.getElementById('sp1').innerHTML = '';
			} 
			if(document.getElementById('frmcustomer:txtmother').value.toString()=='')
			{rval2=false;
				document.getElementById('sp2').innerHTML = '*';}
				else
				{	
			    rval2= true;
			    document.getElementById('sp2').innerHTML = '';
				} 
				
			 if(document.getElementById('frmcustomer:sdtae').value.toString()=='')
			{rval3=false;
				document.getElementById('sp3').innerHTML = '*';}
				else
				{	
			    rval3= true;
			    document.getElementById('sp3').innerHTML = '';
				} 
			 if(document.getElementById('frmcustomer:listboxhour').value.toString()=='')
			{rval4=false;
				document.getElementById('sp4').innerHTML = '*';}
				else
				{	
			    rval4= true;
			    document.getElementById('sp4').innerHTML = '';
				} 
			if(document.getElementById('frmcustomer:hmenuplace1').value.toString()=='')
			{rval5=false;
				document.getElementById('sp5').innerHTML = '*';}
				else
				{	
			    rval5= true;
			    document.getElementById('sp5').innerHTML = '';
				} 
			 if(document.getElementById('frmcustomer:listboxlanguage').value.toString()=='')
			{rval6=false;
				document.getElementById('sp6').innerHTML = '*';}
				else
				{	
			    rval6= true;
			    document.getElementById('sp6').innerHTML = '';
				} 
			 if(document.getElementById('frmcustomer:radiopackage').value.toString()=='')
			{rval7=false;
				document.getElementById('sp7').innerHTML = '*';}
				else
				{	
			    rval7= true;
			    document.getElementById('sp7').innerHTML = '';
				} 
			 if(document.getElementById('frmcustomer:listboxSiblings').value.toString()=='')
			{rval8=false;
				document.getElementById('sp8').innerHTML = '*';}
				else
				{	
			    rval8= true;
			    document.getElementById('sp8').innerHTML = '';
				} 
			 if(document.getElementById('frmcustomer:txtaddress1').value.toString()=='')
			{rval9=false;
				document.getElementById('sp9').innerHTML = '*';}
				else
				{	
			    rval9= true;
			    document.getElementById('sp9').innerHTML = '';
				} 
		 if(rval1==false || rval2==false || rval3==false || rval4==false || rval5==false || rval6==false || rval7==false || rval8==false || rval9==false )
			rval=false;
		else
			rval=true;
				//document.getElementById('frmcustomer:buttonprc').disabled = true;
//}
	 return rval;
}
</script>
<script type="text/javascript">
    //<![CDATA[
		window.addEvent('domready', function() { 
			myCal1 = new Calendar({ bdate: 'd/m/Y' }, { direction: -1, tweak: {x: 6, y: 0} });
			
		});
	//]]>

  </script>
</head>
<body>
<%
//Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();

//if(ses.get("uname")==null)
////if(session.getAttribute("username")==null)
//String redirectURL = "index.faces";
//response.sendRedirect(redirectURL);
//}
%>
<%
Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();

if(ses.get("secdealerno")==null)
{ 
//ses.put("secdealerpack","0");
String redirectURL = "index.faces";
 
//response.sendRedirect(redirectURL);
}
%>
<f:view>
<h:form id="frmcustomer"   >
<table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>

        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/title.jpg" width="192" height="56" /></td>
          </tr>
          
        </table></td>
      </tr>
      <tr>
        <td height="28" background="images/btnbg.jpg"><table width="98%" border="0" align="center" cellpadding="2" cellspacing="2">
            <tr>

              <td width="50%" class="h2"><h:outputText value="Welcome :#{sessionScope.secdealername}"></h:outputText></td>
              <td width="50%" align="right" class="h3" id="dec3"><h:commandLink action="#{admin.logout}" immediate="true" value="Logout"></h:commandLink></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td height="5"></td>
      </tr>

      <tr>
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="217" height="550" valign="top"><table width="190" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td><img src="images/lnktp.jpg" width="190" height="15" /></td>
                    </tr>
                    <tr>
                      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><h:commandLink value="Horoscope" action="#{admin.ephimeris}" immediate="true" ></h:commandLink></td>
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
                  </table></td>
                  <td width="78%" align="center" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td><fieldset>
                        <legend class="lgnd"><img src="images/user.png" width="16" height="16" /> Kidscope Entry</legend>
                        <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td height="5"></td>
                          </tr>
                          <tr>
                            <td> 
                                <h:panelGroup id="pan2" rendered="true" binding="#{customer.panel2}">
                                  <table width="100%" border="0" cellspacing="0" cellpadding="2">
                                    <tr>
                                      <td class="h7">Child Birth Details</td>
                                    </tr>
                                    <tr>
                                      <td class="h7">&nbsp;</td>
                                    </tr>
                                    <tr>
                                      <td>
															<table width="100%" border="0" cellspacing="2"
																cellpadding="2">
																<tr>
																	<td width="14%" height="20" align="right"
																		class="frmtxt">Kid's name  :</td>
																																		<td width="29%" height="20" class="frmtxt" align="left">
																	<h:inputText  id="txtKidsName"
																		value="#{customer.kidsname}" styleClass="frm"
																		 ></h:inputText>
																	<td></td>
																	<td> <h:inputHidden  id="txtpack" value="#{sessionScope.secdealerpack}"></h:inputHidden> </td>
																	<td></td>
																</tr>
																<tr>
																	<td width="14%" height="20" align="right"
																		class="frmtxt">Father Name :</td>
																	<td width="29%" height="20" class="frmtxt" align="left">
																	<h:inputText onkeyup="validateForm()" id="txtfather"
																		value="#{customer.father}" styleClass="frm"
																		required="true" requiredMessage="*"></h:inputText> <span
																		id="sp1" class="message"></span> <h:message
																		for="txtfather" styleClass="message"></h:message>
																	<td width="13%" height="20" align="right"
																		class="frmtxt">Mother Name :</td>
																	<td width="24%" height="20" align="left" class="frmtxt"><h:inputText
																		id="txtmother" onkeyup="validateForm()"
																		value="#{customer.mother}" styleClass="frm"
																		required="true" requiredMessage="*"></h:inputText> <span
																		id="sp2" class="message"></span> <h:message
																		for="txtmother" styleClass="message"></h:message></td>
																	<td></td>
																</tr>
																<tr>
																	<td width="14%" height="20" align="right"
																		class="frmtxt">Birth Date :</td>
																	<td width="39%" height="20" class="frmtxt" align="left"><input
																		name="bdate" type="text" class="frm" id="bdate"
																		onblur="assignval(this)" /> <span id="sp3"
																		class="message"></span> <h:message for="sdtae"
																		styleClass="message"></h:message> <h:inputHidden
																		id="sdtae" required="true" requiredMessage="*"
																		value="#{customer.birth_date}">
																		<f:convertDateTime pattern="dd/MM/yy" />
																	</h:inputHidden></td>
																	<td width="13%" height="20" align="right"
																		class="frmtxt">Birth Time :</td>
																	<td width="34%" height="20" class="frmtxt">
																	<table width="90%" border="0" cellpadding="0"
																		cellspacing="0">
																		<tr>
																			<td align="right" class="frmtxt"><h:selectOneMenu
																				id="listboxhour" value="#{customer.birth_timehour}"
																				styleClass="frm5" required="true"
																				onclick="validateForm()" requiredMessage="*">
																				<f:selectItem itemLabel="HH" itemValue="" />
																				<f:selectItem itemLabel="00" itemValue="0" />
																				<f:selectItem itemLabel="01" itemValue="1" />
																				<f:selectItem itemLabel="02" itemValue="2" />
																				<f:selectItem itemLabel="03" itemValue="3" />
																				<f:selectItem itemLabel="04" itemValue="4" />
																				<f:selectItem itemLabel="05" itemValue="5" />
																				<f:selectItem itemLabel="06" itemValue="6" />
																				<f:selectItem itemLabel="07" itemValue="7" />
																				<f:selectItem itemLabel="08" itemValue="8" />
																				<f:selectItem itemLabel="09" itemValue="9" />
																				<f:selectItem itemLabel="10" itemValue="10" />
																				<f:selectItem itemLabel="11" itemValue="11" />
																				<f:selectItem itemLabel="12" itemValue="12" />
																				<f:selectItem itemLabel="13" itemValue="13" />
																				<f:selectItem itemLabel="14" itemValue="14" />
																				<f:selectItem itemLabel="15" itemValue="15" />
																				<f:selectItem itemLabel="16" itemValue="16" />
																				<f:selectItem itemLabel="17" itemValue="17" />
																				<f:selectItem itemLabel="18" itemValue="18" />
																				<f:selectItem itemLabel="19" itemValue="19" />
																				<f:selectItem itemLabel="20" itemValue="20" />
																				<f:selectItem itemLabel="21" itemValue="21" />
																				<f:selectItem itemLabel="22" itemValue="22" />
																				<f:selectItem itemLabel="23" itemValue="23" />
																			</h:selectOneMenu> <span id="sp4" class="message"></span> <h:message
																				for="listboxhour" styleClass="message"></h:message>
																			</td>
																			<td align="left" class="frmtxt">:</td>
																			<td align="left" class="frmtxt"><h:selectOneMenu
																				id="listboxmin" label="MM"
																				value="#{customer.birth_timemin}" styleClass="frm5"
																				required="true" requiredMessage="*">
																				<f:selectItem itemLabel="00" itemValue="0" />
																				<f:selectItem itemLabel="01" itemValue="1" />
																				<f:selectItem itemLabel="02" itemValue="2" />
																				<f:selectItem itemLabel="03" itemValue="3" />
																				<f:selectItem itemLabel="04" itemValue="4" />
																				<f:selectItem itemLabel="05" itemValue="5" />
																				<f:selectItem itemLabel="06" itemValue="6" />
																				<f:selectItem itemLabel="07" itemValue="7" />
																				<f:selectItem itemLabel="08" itemValue="8" />
																				<f:selectItem itemLabel="09" itemValue="9" />
																				<f:selectItem itemLabel="10" itemValue="10" />
																				<f:selectItem itemLabel="11" itemValue="11" />
																				<f:selectItem itemLabel="12" itemValue="12" />
																				<f:selectItem itemLabel="13" itemValue="13" />
																				<f:selectItem itemLabel="14" itemValue="14" />
																				<f:selectItem itemLabel="15" itemValue="15" />
																				<f:selectItem itemLabel="16" itemValue="16" />
																				<f:selectItem itemLabel="17" itemValue="17" />
																				<f:selectItem itemLabel="18" itemValue="18" />
																				<f:selectItem itemLabel="19" itemValue="19" />
																				<f:selectItem itemLabel="20" itemValue="20" />
																				<f:selectItem itemLabel="21" itemValue="21" />
																				<f:selectItem itemLabel="22" itemValue="22" />
																				<f:selectItem itemLabel="23" itemValue="23" />
																				<f:selectItem itemLabel="24" itemValue="24" />
																				<f:selectItem itemLabel="25" itemValue="25" />
																				<f:selectItem itemLabel="26" itemValue="26" />
																				<f:selectItem itemLabel="27" itemValue="27" />
																				<f:selectItem itemLabel="28" itemValue="28" />
																				<f:selectItem itemLabel="29" itemValue="29" />
																				<f:selectItem itemLabel="30" itemValue="30" />
																				<f:selectItem itemLabel="31" itemValue="31" />
																				<f:selectItem itemLabel="32" itemValue="32" />
																				<f:selectItem itemLabel="33" itemValue="33" />
																				<f:selectItem itemLabel="34" itemValue="34" />
																				<f:selectItem itemLabel="35" itemValue="35" />
																				<f:selectItem itemLabel="36" itemValue="36" />
																				<f:selectItem itemLabel="37" itemValue="37" />
																				<f:selectItem itemLabel="38" itemValue="38" />
																				<f:selectItem itemLabel="39" itemValue="39" />
																				<f:selectItem itemLabel="40" itemValue="40" />
																				<f:selectItem itemLabel="41" itemValue="41" />
																				<f:selectItem itemLabel="42" itemValue="42" />
																				<f:selectItem itemLabel="43" itemValue="43" />
																				<f:selectItem itemLabel="44" itemValue="44" />
																				<f:selectItem itemLabel="45" itemValue="45" />
																				<f:selectItem itemLabel="46" itemValue="46" />
																				<f:selectItem itemLabel="47" itemValue="47" />
																				<f:selectItem itemLabel="48" itemValue="48" />
																				<f:selectItem itemLabel="49" itemValue="49" />
																				<f:selectItem itemLabel="50" itemValue="50" />
																				<f:selectItem itemLabel="51" itemValue="51" />
																				<f:selectItem itemLabel="52" itemValue="52" />
																				<f:selectItem itemLabel="53" itemValue="53" />
																				<f:selectItem itemLabel="54" itemValue="54" />
																				<f:selectItem itemLabel="55" itemValue="55" />
																				<f:selectItem itemLabel="56" itemValue="56" />
																				<f:selectItem itemLabel="57" itemValue="57" />
																				<f:selectItem itemLabel="58" itemValue="58" />
																				<f:selectItem itemLabel="59" itemValue="59" />
																				<f:validateLength maximum="59"></f:validateLength>
																			</h:selectOneMenu> <h:message for="listboxmin" styleClass="message"></h:message>
																			</td>
																			<td align="center" class="frmtxt">:</td>
																			<td align="center" class="frmtxt"><h:selectOneMenu
																				id="listboxsec" value="#{customer.birth_timesec}"
																				styleClass="frm5" required="true"
																				requiredMessage="*">
																				<f:selectItem itemLabel="00" itemValue="0" />
																				<f:selectItem itemLabel="01" itemValue="1" />
																				<f:selectItem itemLabel="02" itemValue="2" />
																				<f:selectItem itemLabel="03" itemValue="3" />
																				<f:selectItem itemLabel="04" itemValue="4" />
																				<f:selectItem itemLabel="05" itemValue="5" />
																				<f:selectItem itemLabel="06" itemValue="6" />
																				<f:selectItem itemLabel="07" itemValue="7" />
																				<f:selectItem itemLabel="08" itemValue="8" />
																				<f:selectItem itemLabel="09" itemValue="9" />
																				<f:selectItem itemLabel="10" itemValue="10" />
																				<f:selectItem itemLabel="11" itemValue="11" />
																				<f:selectItem itemLabel="12" itemValue="12" />
																				<f:selectItem itemLabel="13" itemValue="13" />
																				<f:selectItem itemLabel="14" itemValue="14" />
																				<f:selectItem itemLabel="15" itemValue="15" />
																				<f:selectItem itemLabel="16" itemValue="16" />
																				<f:selectItem itemLabel="17" itemValue="17" />
																				<f:selectItem itemLabel="18" itemValue="18" />
																				<f:selectItem itemLabel="19" itemValue="19" />
																				<f:selectItem itemLabel="20" itemValue="20" />
																				<f:selectItem itemLabel="21" itemValue="21" />
																				<f:selectItem itemLabel="22" itemValue="22" />
																				<f:selectItem itemLabel="23" itemValue="23" />
																				<f:selectItem itemLabel="24" itemValue="24" />
																				<f:selectItem itemLabel="25" itemValue="25" />
																				<f:selectItem itemLabel="26" itemValue="26" />
																				<f:selectItem itemLabel="27" itemValue="27" />
																				<f:selectItem itemLabel="28" itemValue="28" />
																				<f:selectItem itemLabel="29" itemValue="29" />
																				<f:selectItem itemLabel="30" itemValue="30" />
																				<f:selectItem itemLabel="31" itemValue="31" />
																				<f:selectItem itemLabel="32" itemValue="32" />
																				<f:selectItem itemLabel="33" itemValue="33" />
																				<f:selectItem itemLabel="34" itemValue="34" />
																				<f:selectItem itemLabel="35" itemValue="35" />
																				<f:selectItem itemLabel="36" itemValue="36" />
																				<f:selectItem itemLabel="37" itemValue="37" />
																				<f:selectItem itemLabel="38" itemValue="38" />
																				<f:selectItem itemLabel="39" itemValue="39" />
																				<f:selectItem itemLabel="40" itemValue="40" />
																				<f:selectItem itemLabel="41" itemValue="41" />
																				<f:selectItem itemLabel="42" itemValue="42" />
																				<f:selectItem itemLabel="43" itemValue="43" />
																				<f:selectItem itemLabel="44" itemValue="44" />
																				<f:selectItem itemLabel="45" itemValue="45" />
																				<f:selectItem itemLabel="46" itemValue="46" />
																				<f:selectItem itemLabel="47" itemValue="47" />
																				<f:selectItem itemLabel="48" itemValue="48" />
																				<f:selectItem itemLabel="49" itemValue="49" />
																				<f:selectItem itemLabel="50" itemValue="50" />
																				<f:selectItem itemLabel="51" itemValue="51" />
																				<f:selectItem itemLabel="52" itemValue="52" />
																				<f:selectItem itemLabel="53" itemValue="53" />
																				<f:selectItem itemLabel="54" itemValue="54" />
																				<f:selectItem itemLabel="55" itemValue="55" />
																				<f:selectItem itemLabel="56" itemValue="56" />
																				<f:selectItem itemLabel="57" itemValue="57" />
																				<f:selectItem itemLabel="58" itemValue="58" />
																				<f:selectItem itemLabel="59" itemValue="59" />
																				<f:convertNumber maxFractionDigits="59" />
																			</h:selectOneMenu> <h:message for="listboxsec" styleClass="message"></h:message>
																			</td>
																		</tr>
																	</table>
																	</td>
																	<td></td>
																</tr>
																<tr>
																	<td height="20" align="right" class="frmtxt">Country/State
																	:</td>
																	<td height="20" align="left" class="frmtxt"><select
																		name="select" class="frm" id="select">
																		<option>Kerala</option>
																	</select></td>
																	<td height="20" align="right" class="frmtxt">Place
																	:</td>
																	<td height="20" align="left" class="frmtxt5"><h:selectOneMenu
																		onblur="assignval(this)" id="hmenuplace1"
																		value="#{customer.place}" styleClass="frm"
																		onclick="validateForm()" required="true"
																		requiredMessage="*">
																		<f:selectItems value="#{kidsdatalist.catagoryname}" />
																	</h:selectOneMenu> <span id="sp5" class="message"></span> <h:message
																		for="hmenuplace1" styleClass="message"></h:message></td>
																	<td></td>

																</tr>
																<tr>
																	<td height="20" align="right" valign="top"
																		class="frmtxt">Language :</td>
																	<td height="20" valign="top" align="left"
																		class="frmtxtmal"><h:selectOneMenu
																		id="listboxlanguage" value="#{customer.language}"
																		onclick="validateForm()" styleClass="frmmal"
																		required="true" requiredMessage="*">
																		<f:selectItem itemLabel="--Select--" itemValue="" />
																		<f:selectItem   itemLabel="മലയാളം" itemValue="1" />
																		<f:selectItem itemLabel="English" itemValue="0" />

																	</h:selectOneMenu> <span id="sp6" class="message"></span> <h:message
																		for="listboxlanguage" styleClass="message"></h:message>
																	</td>
																	<td height="20" align="right" valign="top"
																		class="frmtxt">Sex :&nbsp;</td>
																	<td height="20" align="left" class="frmtxt"><h:selectOneMenu
																		onclick="validateForm()" id="radiopackage"
																		value="#{customer.sex}" styleClass="frm"
																		required="true" requiredMessage="*"
																		style="height: 17px">
																		<f:selectItem itemLabel="--Select--" itemValue="" />
																		<f:selectItem itemLabel="Male" itemValue="M" />
																		<f:selectItem itemLabel="Female" itemValue="F" />

																	</h:selectOneMenu> <span id="sp7" class="message"></span> <h:message
																		for="radiopackage" styleClass="message"></h:message></td>
																	<td></td>
																</tr>
																<tr>
																	<td height="20" align="right" valign="top"
																		class="frmtxt">&nbsp;Package :;</td>
																	<td height="20" align="left" valign="top"
																		class="frmtxt"><h:selectOneMenu
																		onclick="validateForm()" id="listboxSiblings"
																		value="#{customer.catagory}" styleClass="frm"
																		required="true" requiredMessage="*" disabled="true">
																		<f:selectItem itemLabel="--Select--" itemValue="" />
																		<f:selectItem itemLabel="Kidscope" itemValue="ki" />
																		<f:selectItem itemLabel="Lifescope" itemValue="li" />
																		<f:selectItem itemLabel="Kidscope&Lifescope"
																			itemValue="bo" />

																	</h:selectOneMenu> <span id="sp8" class="message"></span> <h:message
																		for="listboxSiblings" styleClass="message"></h:message></td>
																	<td height="20" align="right" valign="top"
																		class="frmtxt">Address:</td>
																	<td height="20" align="left" class="frmtxt"><h:inputTextarea
																		id="txtaddress1" onkeyup="validateForm()"
																		value="#{customer.address}" required="true"
																		requiredMessage="*" styleClass="frm"></h:inputTextarea>
																	<span id="sp9" class="message"></span> <h:message
																		for="txtaddress1" styleClass="message"></h:message></td>
																	<td></td>



																</tr>

																<tr align="left">
																	<td height="20" colspan="4" align="left" valign="top">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0" allign="left">
																		<tr>
																			<td allign="left" width="35%" >&nbsp;</td>
																			<td allign="left" ><div id="divbtnprc"><h:commandLink id="buttonprc"
																				action="#{grahanila.getplanetPosition}"
																				immediate="false" onclick="return assignval(this)"
																				target="_blank" styleClass="btn"
																				value="Print Kidscope" > 
																				<f:setPropertyActionListener value="first"
																					target="#{grahanila.intesave}" />
																				<f:setPropertyActionListener
																					value="#{customer.birth_date}"
																					target="#{grahanila.birth_date}" />
																				<f:setPropertyActionListener
																					value="#{customer.birth_timehour}"
																					target="#{grahanila.birth_timehour}" />
																				<f:setPropertyActionListener
																					value="#{customer.birth_timemin}"
																					target="#{grahanila.birth_timemin}" />
																				<f:setPropertyActionListener
																					value="#{customer.birth_timesec}"
																					target="#{grahanila.birth_timesec}" />
																				<f:setPropertyActionListener
																					value="#{customer.place}"
																					target="#{grahanila.placeid}" />
																				<f:setPropertyActionListener
																					value="#{customer.language}"
																					target="#{grahanila.language}" />
																				<f:setPropertyActionListener value="#{customer.sex}"
																					target="#{grahanila.sex}" />
																				<f:setPropertyActionListener
																					value="#{customer.mother}"
																					target="#{grahanila.mothername}" />
																				<f:setPropertyActionListener
																					value="#{customer.father}"
																					target="#{grahanila.fathername}" />
																				<f:setPropertyActionListener
																					value="#{customer.address}"
																					target="#{grahanila.address}" />
																				<f:setPropertyActionListener
																					value="#{customer.catagory}"
																					target="#{grahanila.catagory}" />
																					<f:setPropertyActionListener
																					value="#{customer.kidsname}"
																					target="#{grahanila.kidsname}" />
																					<f:setPropertyActionListener
																					value="1"
																					target="#{grahanila.pack}"/>
																			</h:commandLink></div></td>
																			
																			 
																			<td  ><div id="divbtnlifeprc"><h:commandLink id="buttonprclifescope"
																				action="#{grahanila.getplanetPosition}"
																				immediate="false" onclick="return assignval(this)"
																				target="_blank" styleClass="btn"
																				value="Print Lifescope">
																				<f:setPropertyActionListener value="first"
																					target="#{grahanila.intesave}" />
																				<f:setPropertyActionListener
																					value="#{customer.birth_date}"
																					target="#{grahanila.birth_date}" />
																				<f:setPropertyActionListener
																					value="#{customer.birth_timehour}"
																					target="#{grahanila.birth_timehour}" />
																				<f:setPropertyActionListener
																					value="#{customer.birth_timemin}"
																					target="#{grahanila.birth_timemin}" />
																				<f:setPropertyActionListener
																					value="#{customer.birth_timesec}"
																					target="#{grahanila.birth_timesec}" />
																				<f:setPropertyActionListener
																					value="#{customer.place}"
																					target="#{grahanila.placeid}" />
																				<f:setPropertyActionListener
																					value="#{customer.language}"
																					target="#{grahanila.language}" />
																				<f:setPropertyActionListener value="#{customer.sex}"
																					target="#{grahanila.sex}" />
																				<f:setPropertyActionListener
																					value="#{customer.mother}"
																					target="#{grahanila.mothername}" />
																				<f:setPropertyActionListener
																					value="#{customer.father}"
																					target="#{grahanila.fathername}" />
																				<f:setPropertyActionListener
																					value="#{customer.address}"
																					target="#{grahanila.address}" />
																				<f:setPropertyActionListener
																					value="#{customer.catagory}"
																					target="#{grahanila.catagory}" />
																					<f:setPropertyActionListener
																					value="#{customer.kidsname}"
																					target="#{grahanila.kidsname}" />
																					<f:setPropertyActionListener
																					value="2"
																					target="#{grahanila.pack}" />
																			</h:commandLink></div></td>
																			<td width="35%" allign="left">&nbsp;</td>
																		</tr>
																	</table>
																	</td>
																	<td></td>
																</tr>
																<tr>
																	<td align="center" valign="top">&nbsp;</td>
																	<td align="center" valign="top">&nbsp;</td>
																	<td align="center" valign="top">&nbsp;</td>
																	<td align="center" valign="top">&nbsp;</td>
																	<td></td>
																</tr>
																<tr>

																	<td align="center" valign="top">&nbsp;</td>
																	<td align="center" valign="top">&nbsp;</td>
																	<td align="right" valign="top">&nbsp;</td>
																	<td></td>
																	<td></td>
																</tr>
															</table>
															</td>
                                    </tr>
                                  </table>
                                </h:panelGroup>
                            </td>
                          </tr>
                          <tr>
                            <td height="5"></td>
                          </tr>
                        </table>
                      </fieldset></td>
                    </tr>
                  </table></td>
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
