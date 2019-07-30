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
<link rel="stylesheet" type="text/css" href="../stylesheet/general.css" />
<script language="JavaScript" type="text/javascript" src="Scripts/mootools.js"></script>
 <script language="JavaScript" type="text/javascript" src="Scripts/calendar.js"></script>
 <script type="text/javascript" src="md5.js"></script>
<script type="text/javascript" src="jcap.js"></script>
<script language=javascript type='text/javascript'> 
function assignval(pass){
 	
	document.getElementById('frmcustomer:sdtae').value=document.getElementById('bdate').value;
	//alert(document.getElementById('frmcustomer:sdtae').value);
}
function showdiv(pass) { 
var divs = document.getElementsByTagName('div'); 
for(i=0;i<divs.length;i++){ 
if(divs[i].id.match(pass)){//if they are 'see' divs 
if (document.getElementById) // DOM3 = IE5, NS6 
divs[i].style.display="block";// show/hide 
else 
if (document.layers) // Netscape 4 
document.layers[divs[i]].display = 'block'; 
else // IE 4 
document.all.divs[i].display = 'block'; 
} else { 
if (document.getElementById) 
divs[i].style.display="none"; 
else 
if (document.layers) // Netscape 4 
document.divs[i].display = 'none'; 
else // IE 4 
document.all.divs[i].display = 'none'; 
} 
} 
} 
function passwordChanged() 
{
	var strength = document.getElementById('frmcustomer:txtpassword');
	var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
	var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
	var enoughRegex = new RegExp("(?=.{6,}).*", "g");
	var pwd =  document.getElementById('frmcustomer:txtpassword');
	//document.getElementById('strength').innerHTML = ''
	if (pwd.value.length==0)
    {
		document.getElementById('strength').innerHTML = 'Type Password';
		return false;
	} else if (false == enoughRegex.test(pwd.value)) 
	{
		
		document.getElementById('strength').innerHTML = 'More Characters';
		return false;
	} else if (strongRegex.test(pwd.value)) 
	{
		document.getElementById('strength').innerHTML = '<span style="color:green">Strong!</span>';
	} else if (mediumRegex.test(pwd.value))
    {
		document.getElementById('strength').innerHTML = '<span style="color:blue">Medium!</span>';
	} else 
	{
		document.getElementById('strength').innerHTML = '<span style="color:blue">Weak!</span>';
	}
}
function validateForm()
{
	var x=document.getElementById('frmcustomer:txtusername').value.toString();
	var atpos=x.indexOf("@");
	var dotpos=x.lastIndexOf(".");
 
	 var rval=true;
	rval=passwordChanged();
	
	if (jcap()==false)
	{	
		 document.getElementById('strengthcaptcha').innerHTML ='Enter the code as it is shown.';
		 
		rval= false;}
	else{
		document.getElementById('strengthcaptcha').innerHTML ='';
	}
		
		if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
		  {
			document.getElementById('strengthemail').innerHTML = 'Not a valid e-mail address';
			rval= false;}
			else
			{	
				document.getElementById('strengthemail').innerHTML = '';
				
		 // alert("Not a valid e-mail address");
		  }	                                                   	
		if (document.getElementById('frmcustomer:txtpassword').value.toString()==document.getElementById('frmcustomer:txtconfirm').value.toString())
		{	
		document.getElementById('strengthconfirm').innerHTML = '';
			}else
			{
				document.getElementById('strengthconfirm').innerHTML = 'Password mismatch';
			rval= false;
			}
		if (document.getElementById('frmcustomer:txtaddress').value.toString()=='')
		{	document.getElementById('strengthaddress').innerHTML = '*';
		rval= false;
			}else
			{
				document.getElementById('strengthaddress').innerHTML = '';
			
			}
		if (document.getElementById('frmcustomer:txtcontact').value.toString()=='')
		{	document.getElementById('strengthcontact').innerHTML = '*';
		rval= false;
			}else
			{
				document.getElementById('strengthcontact').innerHTML = '';
			
			}
		if (document.getElementById('frmcustomer:txtname').value.toString()=='')
		{	document.getElementById('strengthname').innerHTML = '*';
		rval= false;
			}else
			{
				document.getElementById('strengthname').innerHTML = '';
			
			}
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

//if(ses.get("dealern")!=null)
	if(session.getAttribute("dealerid")==null)
{
	
//if(session.getAttribute("username")==null)

String redirectURL = "adminlogin.faces";
response.sendRedirect(redirectURL);
}
%>
<f:view>
<h:form id="frmcustomer"   styleClass="frm" >
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
                  <td width="217" valign="top"><table width="190" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><img src="images/lnktp.jpg" width="190" height="15" /></td>
                      </tr>
                      <tr>
                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="index.htm">Home</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="about.htm">About us</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="horoscope.htm">Horoscope</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%">‍<img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="numerology.htm">Numerology</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="demo.jsp">Product Demo</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="news.jsp">News &amp; Events</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="feedback.jsp">Feedback</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="contactus.jsp">Contact us</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="dealer.htm">Dealership Enquiry</a></td>
                                </tr>
                            </table></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="images/lnkbtm.jpg" width="190" height="15" /></td>
                      </tr>
                  </table></td>
                  <td width="78%" align="center"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
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
                                      <td><table width="100%" border="0" cellspacing="2" cellpadding="2">
                                          <tr>
                                            <td width="14%" height="20" align="right" class="frmtxt">Name :</td>
                                            <td width="29%" height="20"   class="frmtxt" align="left"><h:inputText  id="txtname1" value="#{customer.name}" styleClass="frm" required="true" requiredMessage="*" ></h:inputText>
                                                <h:message for="txtname1" styleClass="message"></h:message>
                                            <td width="13%" height="20" align="right" class="frmtxt">Address : </td>
                                            <td width="24%" height="20" align="left" class="frmtxt"><h:inputText  id="txtaddress1" value="#{customer.address}"  required="true" requiredMessage="*" styleClass="frm" style="width: 200px"></h:inputText>
                                                <h:message for="txtaddress1" styleClass="message"></h:message>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td width="14%" height="20" align="right" class="frmtxt">Birth Date :</td>
                                            <td width="39%" height="20"   class="frmtxt"><input name="bdate" type="text" class="frm" id="bdate"  onblur="assignval(this)" />
                                                <h:message for="sdtae" styleClass="message"></h:message>
                                                <h:inputHidden   id="sdtae" required="true" requiredMessage="*" value="#{customer.birth_date}">
                                                  <f:convertDateTime pattern="dd/MM/yy"/>
                                                </h:inputHidden>
                                            </td>
                                            <td width="13%" height="20" align="right" class="frmtxt">Birth Time : </td>
                                            <td width="34%" height="20" class="frmtxt"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                  <td align="center" class="frmtxt"><h:selectOneMenu id="listboxhour" value="#{customer.birth_timehour}" styleClass="frm5" required="true" requiredMessage="*">
                                                      <f:selectItem itemLabel="HH" itemValue="" />
                                                      <f:selectItem itemLabel="01" itemValue="01" />
                                                    <f:selectItem itemLabel="02" itemValue="02" />
                                                      <f:selectItem itemLabel="03" itemValue="03" />
                                                    <f:selectItem itemLabel="04" itemValue="04" />
                                                      <f:selectItem itemLabel="05" itemValue="05" />
                                                    <f:selectItem itemLabel="06" itemValue="06" />
                                                      <f:selectItem itemLabel="07" itemValue="07" />
                                                    <f:selectItem itemLabel="08" itemValue="08" />
                                                      <f:selectItem itemLabel="09" itemValue="09" />
                                                    <f:selectItem itemLabel="10" itemValue="10" />
                                                      <f:selectItem itemLabel="11" itemValue="11" />
                                                    <f:selectItem itemLabel="12" itemValue="12" />
                                                      <f:selectItem itemLabel="13" itemValue="13" />
                                                    <f:selectItem itemLabel="14" itemValue="14" />
                                                      <f:selectItem itemLabel="15" itemValue="15" />
                                                    <f:selectItem itemLabel="16" itemValue="16" />
                                                      <f:selectItem itemLabel="17" itemValue="17" />
                                                    <f:selectItem itemLabel="18" itemValue="18" />
                                                      <f:selectItem itemLabel="19" itemValue="18" />
                                                    <f:selectItem itemLabel="20" itemValue="20" />
                                                      <f:selectItem itemLabel="21" itemValue="21" />
                                                    <f:selectItem itemLabel="22" itemValue="22" />
                                                      <f:selectItem itemLabel="23" itemValue="23" />
                                                    </h:selectOneMenu>
                                                      <h:message for="listboxhour" styleClass="message"></h:message>
                                                  </td>
                                                  <td align="center" class="frmtxt">:</td>
                                                  <td align="center" class="frmtxt"><h:selectOneMenu id="listboxmin" label="MM" value="#{customer.birth_timemin}" styleClass="frm5" required="true" requiredMessage="*">
                                                      <f:selectItem itemLabel="00" itemValue="00" />
                                                      <f:selectItem itemLabel="01" itemValue="01" />
                                                      <f:selectItem itemLabel="02" itemValue="02" />
                                                      <f:selectItem itemLabel="03" itemValue="03" />
                                                    <f:selectItem itemLabel="04" itemValue="04" />
                                                      <f:selectItem itemLabel="05" itemValue="05" />
                                                    <f:selectItem itemLabel="06" itemValue="06" />
                                                      <f:selectItem itemLabel="07" itemValue="07" />
                                                    <f:selectItem itemLabel="08" itemValue="08" />
                                                      <f:selectItem itemLabel="09" itemValue="09" />
                                                    <f:selectItem itemLabel="10" itemValue="10" />
                                                      <f:selectItem itemLabel="11" itemValue="11" />
                                                    <f:selectItem itemLabel="12" itemValue="12" />
                                                      <f:selectItem itemLabel="13" itemValue="13" />
                                                    <f:selectItem itemLabel="14" itemValue="14" />
                                                      <f:selectItem itemLabel="15" itemValue="15" />
                                                    <f:selectItem itemLabel="16" itemValue="16" />
                                                      <f:selectItem itemLabel="17" itemValue="17" />
                                                    <f:selectItem itemLabel="18" itemValue="18" />
                                                      <f:selectItem itemLabel="19" itemValue="18" />
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
                                                    </h:selectOneMenu>
                                                      <h:message for="listboxmin" styleClass="message"></h:message>
                                                  </td>
                                                  <td align="center" class="frmtxt">:</td>
                                                  <td align="center" class="frmtxt"><h:selectOneMenu id="listboxsec" value="#{customer.birth_timesec}" styleClass="frm5" required="true" requiredMessage="*">
                                                      <f:selectItem itemLabel="00" itemValue="00" />
                                                      <f:selectItem itemLabel="01" itemValue="01" />
                                                      <f:selectItem itemLabel="02" itemValue="02" />
                                                      <f:selectItem itemLabel="03" itemValue="03" />
                                                    <f:selectItem itemLabel="04" itemValue="04" />
                                                      <f:selectItem itemLabel="05" itemValue="05" />
                                                    <f:selectItem itemLabel="06" itemValue="06" />
                                                      <f:selectItem itemLabel="07" itemValue="07" />
                                                    <f:selectItem itemLabel="08" itemValue="08" />
                                                      <f:selectItem itemLabel="09" itemValue="09" />
                                                    <f:selectItem itemLabel="10" itemValue="10" />
                                                      <f:selectItem itemLabel="11" itemValue="11" />
                                                    <f:selectItem itemLabel="12" itemValue="12" />
                                                      <f:selectItem itemLabel="13" itemValue="13" />
                                                    <f:selectItem itemLabel="14" itemValue="14" />
                                                      <f:selectItem itemLabel="15" itemValue="15" />
                                                    <f:selectItem itemLabel="16" itemValue="16" />
                                                      <f:selectItem itemLabel="17" itemValue="17" />
                                                    <f:selectItem itemLabel="18" itemValue="18" />
                                                      <f:selectItem itemLabel="19" itemValue="18" />
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
                                                    </h:selectOneMenu>
                                                      <h:message for="listboxsec" styleClass="message"></h:message>
                                                  </td>
                                                </tr>
                                            </table>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td height="20" align="right" class="frmtxt">Country :</td>
                                            <td height="20" class="frmtxt"><select name="select" class="frm" id="select" >
                                                <option>India</option>
                                            </select></td>
                                            <td height="20" align="right" class="frmtxt">Place :</td>
                                            <td height="20" class="frmtxt"><h:selectOneMenu onblur="assignval(this)" id="hmenuplace1" value="#{customer.place}" styleClass="frm">
                                                <f:selectItems value="#{kidsdatalist.catagoryname}" />
                                              </h:selectOneMenu></td>
                                          </tr>
                                          <tr>
                                            <td height="20" align="right" valign="top" class="frmtxt">Language :</td>
                                            <td height="20" valign="top" class="frmtxt"><h:selectOneMenu  id="listboxlanguage" value="#{customer.language}" styleClass="frm" required="true" requiredMessage="*">
                                                <f:selectItem  itemLabel="--Select--" itemValue="" />
                                                <f:selectItem  itemLabel="Malayalam" itemValue="M" />
                                                <f:selectItem  itemLabel="English" itemValue="E" />
                                                <f:selectItem  itemLabel="Tamil" itemValue="T" />
                                              </h:selectOneMenu>
                                                <h:message for="listboxlanguage" styleClass="message"></h:message>
                                            </td>
                                            <td height="20" align="right" valign="top" class="frmtxt">Sex :&nbsp;</td>
                                            <td height="20" class="frmtxt"><h:selectOneMenu id="radiopackage" value="#{customer.scheme_package}" styleClass="frm" required="true" requiredMessage="*" style="height: 17px">
                                                <f:selectItem itemLabel="Sex" itemValue="" />
                                                <f:selectItem itemLabel="Male" itemValue="Male" />
                                                <f:selectItem itemLabel="Female" itemValue="Female" />
 
                                              </h:selectOneMenu><h:message for="radiopackage" styleClass="message"></h:message></td>
                                          </tr>
                                          <tr>
                                            <td height="20" align="right" valign="top" class="frmtxt">&nbsp;Siblings&nbsp;</td>
                                            <td height="20" valign="top" class="frmtxt"><h:selectOneMenu id="listboxSiblings" value="#{customer.language}" styleClass="frm" required="true" requiredMessage="*">
                                                <f:selectItem itemLabel="--Select--" itemValue="" />
                                                <f:selectItem itemLabel="SE" itemValue="SE" />
                                                <f:selectItem itemLabel="SY" itemValue="SY" />
                                                <f:selectItem itemLabel="BY" itemValue="BY" />
                                                <f:selectItem itemLabel="BE" itemValue="BE" />
                                              </h:selectOneMenu><h:message for="listboxSiblings" styleClass="message"></h:message></td>
                                            <td height="20" align="right" valign="top" class="frmtxt">Religion :</td>
                                            <td height="20" class="frmtxt"><h:selectOneMenu id="religion" value="#{customer.scheme_package}" styleClass="frm" required="true" requiredMessage="*" style="height: 17px">
                                                <f:selectItem itemLabel="Select" itemValue="" />
                                                <f:selectItem itemLabel="Hindu" itemValue="Hindu" />
                                                <f:selectItem itemLabel="Christian" itemValue="Christian" />
                                                  <f:selectItem itemLabel="Muslim" itemValue="Muslim" />
 
                                              </h:selectOneMenu><h:message for="religion" styleClass="message"></h:message><table width="100%" border="0" cellspacing="2" cellpadding="2">
                                                <tr>
                                                  
                                                </tr>
                                            </table></td>
                                          </tr>
                                          <tr>
                                            <td height="20" align="right" valign="top" class="frmtxt">&nbsp;</td>
                                            <td height="20" valign="top" class="frmtxt">&nbsp;</td>
                                            <td height="20" align="right" valign="top" class="frmtxt">&nbsp;</td>
                                            <td height="20" class="frmtxt">&nbsp;</td>
                                          </tr>
                                          <tr>
                                            <td height="20" colspan="4" align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                  <td width="42%">&nbsp;</td>
                                                  <td width="23%"><h:commandButton id="button"  action="#{customer.dlrCustomersave}"  immediate="false" onclick="assignval(this)"  styleClass="btn" value="OK"> </h:commandButton>
                                                  </td>
                                                  <td width="35%">&nbsp;</td>
                                                </tr>
                                            </table></td>
                                          </tr>
                                          <tr>
                                            <td align="center" valign="top">&nbsp;</td>
                                            <td align="center" valign="top">&nbsp;</td>
                                            <td align="center" valign="top">&nbsp;</td>
                                            <td align="center" valign="top">&nbsp;</td>
                                          </tr>
                                          <tr>
                                             
                                            <td align="center" valign="top">&nbsp;</td>
                                            <td align="center" valign="top">&nbsp;</td>
                                            <td align="right" valign="top">&nbsp;</td>
                                          </tr>
                                      </table></td>
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
