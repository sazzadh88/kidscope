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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="md5.js"></script>
<script type="text/javascript" src="jcap.js"></script>
<script language=javascript type='text/javascript'>
function assaignval(pass){
 	
	document.forms["myForm"]["hidtxtname"].value=pass.value;
	
}
function assaignvalemail(pass){
 	
	document.forms["myForm"]["hidemail"].value=pass.value;
	
}
function validateForm()
{
	var ck_password =  /^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;
 
	 var rval=true;
	 
	
	if (jcap()==false)
	{	
		 document.getElementById('strengthcaptcha').innerHTML ='Enter the code as it is shown.';
		 
		rval= false;}
	else{
		document.getElementById('strengthcaptcha').innerHTML ='';
	}
		var x=document.forms["myForm"]["hidemail"].value;
		var atpos=x.indexOf("@");
		var dotpos=x.lastIndexOf(".");
		if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
		  {
			document.getElementById('strengthemail').innerHTML = 'Not a valid e-mail address';
			rval= false;}
			else
			{	
				document.getElementById('strengthemail').innerHTML = '';
				
		 // alert("Not a valid e-mail address");
		  }	                                                   	
 if(document.forms["myForm"]["hidtxtname"].value.toString()=="")
		 {
	 document.getElementById('strengthdealer').innerHTML ='*';
	 rval= false;
		 }
 else
	{	
		document.getElementById('strengthdealer').innerHTML = '';
		
// alert("Not a valid e-mail address");
}	 
  if(document.getElementById('myForm:txtaddress').value.toString()=="")
		 {
	 document.getElementById('strengthaddress').innerHTML ='*';
	 rval= false;
		 }
 else
	{	
		document.getElementById('strengthaddress').innerHTML = '';
       
	}
  if(document.getElementById('myForm:txtcontact').value.toString()=="")
	 {
document.getElementById('strengthcontact').innerHTML ='*';
rval= false;
	 }
else
{	
	document.getElementById('strengthcontact').innerHTML = '';

}
//}
	 return rval;
}
</script>
</head>


<body>

<f:view>
<h:form id="myForm">

<table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>

        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/title.jpg" width="192" height="56" /></td>
          </tr>
          <tr>
            <td background="images/btnbg.jpg">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>

            <td width="20%" valign="top"><table width="190" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td><img src="images/lnktp.jpg" width="190" height="15" /></td>
                    </tr>
                    <tr>
                      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="index.jsp">Home</a></td>
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
                                  <td width="94%" id="dec1">Kidscope Demo</td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="features.htm">Features</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1">Photo Gallery</td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="news.htm">News &amp; Events</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="feedback.faces">Feedback</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="contactus.htm">Contact us</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td class="bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="6%"><img src="images/bullet1.png" width="5" height="9" /></td>
                                  <td width="94%" id="dec1"><a href="signupdealer.faces">Dealership Enquiry</a></td>
                                </tr>
                            </table></td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td><img src="images/lnkbtm.jpg" width="190" height="15" /></td>
                    </tr>
                  </table></td>
            <td width="60%"> 
            
              <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="350" valign="top">
                  <fieldset>
                  
                  <legend class="lgnd"><img src="images/request.png" width="16" height="16" /> Dealership Request</legend>
                  <h:panelGroup id="hp1"  binding="#{dealer.hpg1}">
                  <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>

                  <td height="5"></td>
                  </tr>
                  <tr>
                    <td height="350"><table width="100%" border="0" cellspacing="2" cellpadding="2">
                      <tr>
                        <td width="32%" align="right" class="frmtxt">Name</td>
                        <td width="1%" align="center" class="frmtxt">:</td>
                        <td width="20%" class="frmtxt"><label>
						<input type="hidden" name="hidtxtname" value="">
                         <h:inputText onchange="assaignval(this)" id="txtname" value="#{dealer.dealername}" styleClass="frm"   ></h:inputText>
 
                        </label></td>
                        <td width="47%" class="frmtxt"><span id="strengthdealer" class="message"></span></td>
                      </tr>
                      <tr>
                        <td align="right" valign="top" class="frmtxt">Address</td>
                        <td align="center" valign="top" class="frmtxt">:</td>
                        <td class="frmtxt">
                          <h:inputTextarea  id="txtaddress" value="#{dealer.address}" styleClass="frm" style="width: 130px"    ></h:inputTextarea>                        </td>
                        <td width="47%" class="frmtxt"><span id="strengthaddress" class="message"></span></td>
                        <td class="frmtxt">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="right" class="frmtxt">Contact No</td>
                        <td align="center" class="frmtxt">:</td>
                        <td class="frmtxt"><label>
                          <h:inputText  id="txtcontact" value="#{dealer.contact_no}" styleClass="frm"   ></h:inputText>
 
                        </label></td>
					<td width="47%" class="frmtxt"><span id="strengthcontact" class="message"></span></td>

                        <td class="frmtxt">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="right" class="frmtxt">Email</td>
                        <td align="center" class="frmtxt">:</td>
                        <td class="frmtxt"><label>
                        <input type="hidden"  name="hidemail" value="">
                        <h:inputText onchange="assaignvalemail(this)" id="txtEmail" value="#{dealer.email}"   styleClass="frm"   ></h:inputText>
 
 
                        </label></td>
                        <td class="frmtxt"><span id="strengthemail" class="message"></span></td>
                      </tr>

                      <tr>
                        <td align="right" class="frmtxt">Name of Organization</td>
                        <td align="center" class="frmtxt">:</td>
                        <td class="frmtxt"><label>
                          <h:inputText  id="txtorganisation" value="#{dealer.organisation}"   styleClass="frm"   ></h:inputText>
 
                        </label></td>
                        <td class="frmtxt">&nbsp;</td>
                      </tr>
                      <tr>

                        <td align="right" class="frmtxt">Nature of Business</td>
                        <td align="center" class="frmtxt">:</td>
                        <td class="frmtxt"><label>
                          <h:inputText  id="txtbussiness" value="#{dealer.bussiness}"   styleClass="frm"    ></h:inputText>
 

                        </label></td>
                        <td class="frmtxt">&nbsp;</td>
                      </tr>
 
                        <tr>
                          <td align="right" valign="top" class="frmtxt">Validation Code</td>
                          <td align="center" valign="top" class="frmtxt">:</td>
                          <td class="frmtxt" ><script class="frm"  type="text/javascript">sjcap();</script>
<noscript><p>[This resource requires a Javascript enabled browser.]</p></noscript></td>
                          <td class="frmtxt"><span id="strengthcaptcha" class="message"></span></td>
                        </tr>
                        <tr><td align="right" class="frmtxt">&nbsp;</td>
                        <td align="center" class="frmtxt">&nbsp;</td>
                         <td class="frmtxt">
                         
                         <h:commandButton   onclick="return validateForm()" id="button" value="Submit" styleClass="btn" action="#{dealer.save}">
                         <f:setPropertyActionListener value="0" target="#{dealer.dealerid}" />
                         </h:commandButton></td>

              
                   
                        <td >

                     </td>

                        <td >&nbsp;</td>
                      </tr>
                      
                    </table>
                    
                    </td>
                  </tr>
                  <tr>
                    <td height="5"></td>
                  </tr>
                  </table>
                  </h:panelGroup>
                  <h:panelGroup id="hp2" binding="#{dealer.hpg2}"  rendered="false">
                  <h:messages styleClass="message" globalOnly="true"> </h:messages> 
                  </h:panelGroup>
                  </fieldset></td>
                </tr>
              </table>                                    </td>
            <td width="20%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
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
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#006fb4"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
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