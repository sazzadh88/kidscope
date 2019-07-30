<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Hao Xiang Live Chat</title>
    <link type="text/css" rel="stylesheet" href="chatwin.css" />
    <script language="javascript" type="text/javascript" > 
//Declaration and initialization of variables

var objRequest=null;
var TimerID=0;
var objbrowse=null;
var IGNORE_UNLOAD = false;
var count=1;

function createObject() //Create object for browser
{
   var objReq=null; 
   if(window.XMLHttpRequest)
   {
       objReq=new XMLHttpRequest();
   }
   else if(window.ActiveXObject)
   {
        try
        {
            objReq=new ActiveXObject("Microsoft.XMLHTTP");
        }
        catch(e)
        {
            objReq=new ActiveXObject("Msxml2.XMLHTTP");
        }
   }  
   return objReq;
}

function makeAjaxcall() //Make call to the server
{ 
   objRequest=createObject();  
   if(objRequest!=null)
   { 
        var dptid=document.getElementById("dptId").value;
        var execid=document.getElementById("exeId").value;
        var userid=document.getElementById("userId").value;
        var uname=document.getElementById("userName").value;
        var exename=document.getElementById("exeName").value;
        var url="AjaxuserMessages.aspx?dptid="+dptid+"&exeid="+execid+"&userid="+userid+"&uname="+uname+"&exename="+exename+"&rad="+Math.random();
        clearTimeout(TimerID);
        objRequest.open("GET",url,true);   
        objRequest.onreadystatechange=responseCallback;
        objRequest.send(null);
   }  
}
function responseCallback() //Receive Response from the server
{ 
   if(objRequest.readyState==4)
   {  
      if(objRequest.status==200)
      {     
         var responsemsg=objRequest.responseText;
         
         if(responsemsg!="")
         {        
           document.getElementById('lblmessages').innerHTML+="<a name="+count+"></a>"+responsemsg;
           window.focus();
           location.href="#"+count;
           count=count+1;
           document.getElementById("txtinput").focus();
           document.getElementById("txtinput").value=document.getElementById("txtinput").value;
         }         
      }  
      TimerID=self.setTimeout("makeAjaxcall();",2000);   
   }    
}

    function setmessages()
    {   
       if(document.getElementById("txtinput").value!="")
       {
           document.getElementById("lblmessages").innerHTML=document.getElementById("lblmessages").innerHTML+"<a name="+count+"></a><br/><Font color='RED'>Me: </Font>"+document.getElementById("txtinput").value;
           location.href="#"+count;
           count=count+1;
           objbrowse=createObject();          
           if(objbrowse!=null)
           { 
            var dptid=document.getElementById("dptId").value;
            var execid=document.getElementById("exeId").value;
            var userid=document.getElementById("userId").value;
            var msg=document.getElementById("txtinput").value;
            document.getElementById("txtinput").value="";
            document.getElementById("txtinput").focus();          
            var url="Ajaxsetmessage.aspx?dptid="+dptid+"&exeid="+execid+"&userid="+userid+"&msg="+msg+"&whom=us&rad="+Math.random();
            objbrowse.open("GET",url,true);   
            objbrowse.onreadystatechange=callmessageback;
            objbrowse.send(null);
          }  
       }
       else
       {
          document.getElementById("txtinput").focus();
       }
      return false;      
    }
    function callmessageback()
    {
    }
    
    function _doLogout() //Make call to the server
{ 
  if(IGNORE_UNLOAD)
  {
   return;
  }
  else
  {   
   objLogout=createObject();  
   if(objLogout!=null)
   {   
        var uid=document.getElementById("userId").value;
        var url="AjaxUserLogout.aspx?uid="+uid+"&rad="+Math.random();
        objLogout.open("GET",url,true);                 
        objLogout.send(null);
   } 
  } 
}


if(window.body)
  window.body.onbeforeunload=_doLogout;  //IE
else
  window.onbeforeunload=_doLogout;  // FX
  
function whatkey()
{
    var Key =  event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
    if(Key==13)
    {
       IGNORE_UNLOAD = true;
    }
}
    
    </script>
   
</head>
<body ondragstart="return false" oncontextmenu="return false" onload="makeAjaxcall();">
<f:view>
    <h:form id="form1">
    <div>
        <div >
            <table border="0" cellpadding="0" cellspacing="0" style="width: 450px" align="center">
                <tr>
                    <td>
                        <img src="Images/head.jpg" alt=""/></td>
                </tr>
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td >
                                    <img src="Images/leftimg.jpg" alt=""/></td>
                                <td  style="background-image:url(Images/centerimg.jpg); width: 100%" align="right" id="dec">
                                    <h:commandLink id="LinkButtonf1" value="signout" onclick="IGNORE_UNLOAD=true;" action="#{dfdfdf}"></h:commandLink></td>
                               
                                <td >
                                    <img src="Images/rightimg.jpg" alt=""/></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td >
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td style="height: 227px;width:2%" ><img src="Images/msgleft.jpg" alt=""/></td>
                            <td style="height: 227px;width:96%"><div id="lblmessages" runat="server" style="overflow:auto; height:228px; width:405px" class="frm1" ></div></td>
                            <td style="height: 227px;width:2%" ><img src="Images/msgright.jpg" alt="" /></td>
                          </tr>
                          <tr>
                            <td style="width:2%"><img src="Images/mleft.jpg"  height="25" alt=""/></td>
                            <td  style="background-image:url(Images/mcenter.jpg);width:96%"  ></td>
                            <td style="width:2%"><img src="Images/mright.jpg"  height="25" alt=""/></td>
                          </tr>
                          <tr>
                            <td style="width:2%"><img src="Images/inleft.jpg"  alt=""/></td>
                            <td style="width:96%"><h:inputText id="txtinput"   styleClass="frm1"></h:inputText></td>
                            <td style="width:2%"><img src="Images/inright.jpg"  alt=""/></td>
                          </tr>
                          <tr>
                            <td style="width:2%" ><img src="Images/btleft.jpg" width="16" height="65" alt=""/></td>
                            <td style="width:96%;background-image:url(Images/inbtm.jpg)" align="center">
                                <h:commandButton id="ImageButton1"   value="~/Images/btnsend.png"   onclick="return setmessages();IGNORE_UNLOAD = true;"  /></td>
                            <td style="width:2%"><img src="Images/btright.jpg" width="19" height="65" alt=""/></td>
                          </tr>
                        </table>                  </td>
                </tr>
                <tr>
                    <td  >
                        <h:inputHidden id="exeId" />
                        <h:inputHidden id="userId"   />
                        <h:inputHidden id="dptId"   />
                        <h:inputHidden id="exeName"  />
                        <h:inputHidden id="userName"  />                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </h:form>
    </f:view>
</body>
</html>
