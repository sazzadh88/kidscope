<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@page import="javax.faces.context.FacesContext;import java.util.Map;"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="stylesheet/style.css" />
 <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet" />	
<script type="text/javascript" src="Scripts/jquery-1.6.2.min.js"></script>
		<script type="text/javascript" src="Scripts/jquery-ui-1.8.16.custom.min.js"></script>
		<script type="text/javascript" src="Scripts/jquery.msgBox.v1.js"></script>
<title>Season Calculation</title>
<script type="text/javascript">
			$(function(){
				
				$("#msgDemo").click(function(){
					$.msgBox("Hello World");
					return false;
				});
				
				$("#msgDemo1").click(function(){
					$.msgBox("Hello World Demo with Custom Title", null, { title: "My Title" });
					return false;
				});

				$("#confirmDemo").click(function(){
					$.msgBox.confirm("Are you sure?",function(){
						alert("OK Clicked");
					});
					return false;
				});

				$("#confirmDemo1").click(function(){
					$.msgBox.confirm("Are you sure?",function(){
						alert("OK Clicked");
					}, false);
					return false;
				});

				$("#confirmDemo2").confirmLink();

			});
		</script>
</head>

<body>
		

<div id="dialog" title="Dialog Title"><span id="mbox"></span></div>

 <%
	Map<String, Object> ses=FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
	//ses.put("dealern",request.getParameter("dlr"));
   if(ses.get("secusername")==null)
   { String redirectURL = "login.faces";
   response.sendRedirect(redirectURL);
   }%>





<table width="100%" border="0"  align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td><table width="1002" border="0" cellspacing="0" cellpadding="0" align="center" >
      <tr>

        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/lo.gif" width="300" height="70" /></td>
          </tr>
          <tr>
            <td  style="color: #F7B54A"><h2> Season of Conception and Delivery</h2></td>
          </tr>
        </table></td>
    <tr><td> 
<table align="left">
<tr>
<td valign="top">
<table border="0" cellspacing="0" cellpadding="0"><tr><td rowspan="3">&nbsp;&nbsp;</td><td align="left" style="color: #3399CC"><a name="ConceptionCalculator"></a><div align="center"><h2>Calculator (Lifescope)</h2>
</div></td><td rowspan="3">&nbsp;</td></tr><tr><td width="590" align="left" id="calc"><br>
    <script language="JavaScript" type="text/javascript">
    <!--
     var monthDays = new Array(31,28,31,30,31,30,31,31,30,31,30,31);
		 
		 function FindDates() {
		  var pDate = document.Conception.cDate.value;
			var totalDates = monthDays[document.Conception.cMonth.value]
			if ((document.Conception.cYear.value%4==0) && (document.Conception.cMonth.value==1)) {
			 totalDates+=1;
			 }
		  document.Conception.cDate.length=0;
			for (var i=0; i<totalDates; i++) {
			 document.Conception.cDate.options[i] = new Option((i+1),(i+1));
			 }
			document.Conception.cDate.options[pDate-1].selected=true;
		  }
    //-->
    </script>
<span class="tinyblue">

<table border="0" cellpadding="0" cellspacing="0" style="width:98%;height:110;"><tr><td valign="top" style="padding-top:5;padding-right:25;">
<br>Choose either  <b>Normal Delivery / </b> <br>or <b>Pre-term Delivery</b>,<br><br><br><br>Enter the date of delivery<br><br>
</td><td align="center" valign="top"><table border="0" cellpadding="0" cellspacing="0" style="width:250;height:110;"><tr><td>
<form name="Conception" method="POST" action="#" style="margin:0;"><table border="0" cellpadding="3" cellspacing="0"><tr><td align="center" valign=middle><br>

<select onchange="changetxt()"  name="DateType" style="width:135;" class="drop"><option value=2>Normal Delevery:<option value=1>Pre-term delevery:</select>

<div id="divbtnritu" style="visibility:hidden"> 
<br>
Days:<select onchange="changetxt" name="DateTypepr" style="width:135;" class="drop">
<option value=15>15 Days<option value=25>25 Days<option value=35>35 Days<option value=45>45 Days<option value=55>55 Days<option value=65>65 Days
<option value=75>75 Days<option value=85>85 Days<option value=95>95 Days<option value=105>105 Days<option value=115>115 Days<option value=125>125 Days</select>

</div></td></tr><tr><td align="center" valign=middle><br>
<select name="cMonth" style="width:100;" onChange="FindDates();" class="drop">
<script language="JavaScript" type="text/javascript">
          <!--
          function changetxt()
          {
        	  if (document.Conception.DateType.value==1) {
        		  document.getElementById('divbtnritu').style.visibility='visible';
            	}
        	  else
        		  document.getElementById('divbtnritu').style.visibility='hidden';
          }
          var today = new Date();
					var months = new Array("January","February","March","April","May","June","July","August","September","October","November","December");
					var thisMonth = today.getMonth();
					for (var i=0; i<12; i++) {
					 document.write("<option value=" + (i));
					 if (i==thisMonth) {
					  document.write(" selected");
					  }
					 document.write(">" + months[i]);
					 }
          //-->
         </script>
				</select>
				<select name="cDate" style="width:40;" class="drop">
				 <option value=1 selected>1
				</select>
				<select name="cYear" style="width:60;" onChange="FindDates();" class="drop">
				 <script language="JavaScript" type="text/javascript">
          <!--
					var thisYear = today.getFullYear();
					for (var i=-6; i<5; i++) {
					 document.write("<option value=" + (thisYear+i));
					 if ((thisYear+i)==(thisYear)) {
					  document.write(" selected");
					  }
					 document.write(">" + (thisYear+i));
					 }
          //-->
         </script>
				</select>
				<br><br>
				Hour <select onchange="changetxt" name="DateTypehr" style="width:135;" class="drop">
<option value=15>0<option value=25>1<option value=35>2<option value=45>3<option value=55>4<option value=65>5
<option value=75>6<option value=85>7<option value=95>8<option value=105>9<option value=115>10<option value=125>11
<option value=15>11<option value=25>12<option value=35>13<option value=45>14<option value=55>15<option value=65>16
<option value=75>17<option value=85>18<option value=95>19<option value=105>20<option value=115>21<option value=125>22
<option value=75>23<option value=85>24</select>
Minute <select onchange="changetxt" name="DateTypemin" style="width:135;" class="drop">
<option value=25>1<option value=35>2<option value=45>3<option value=55>4<option value=65>5
<option value=75>6<option value=85>7<option value=95>8<option value=105>9<option value=115>10<option value=125>11
<option value=15>11<option value=25>12<option value=35>13<option value=45>14<option value=55>15<option value=65>16
<option value=75>17<option value=85>18<option value=95>19<option value=105>20<option value=115>21<option value=125>22
<option value=75>23<option value=85>24<option value=15>25<option value=15>26<option value=15>27<option value=15>28
<option value=25>29<option value=35>30<option value=45>31<option value=55>32<option value=65>33
<option value=75>34<option value=85>35<option value=95>36<option value=105>37<option value=115>38<option value=125>39
<option value=15>40<option value=25>41<option value=35>42<option value=45>43<option value=55>44<option value=65>45
<option value=75>46<option value=85>47<option value=95>48<option value=105>49<option value=115>50<option value=125>51
<option value=75>52<option value=85>53<option value=15>54<option value=15>55<option value=15>56<option value=15>57
<option value=75>58<option value=85>59<option value=15>60
</select>
Second <select onchange="changetxt" name="DateTypesec" style="width:135;" class="drop">
<option value=25>1<option value=35>2<option value=45>3<option value=55>4<option value=65>5
<option value=75>6<option value=85>7<option value=95>8<option value=105>9<option value=115>10<option value=125>11
<option value=15>11<option value=25>12<option value=35>13<option value=45>14<option value=55>15<option value=65>16
<option value=75>17<option value=85>18<option value=95>19<option value=105>20<option value=115>21<option value=125>22
<option value=75>23<option value=85>24<option value=15>25<option value=15>26<option value=15>27<option value=15>28
<option value=25>29<option value=35>30<option value=45>31<option value=55>32<option value=65>33
<option value=75>34<option value=85>35<option value=95>36<option value=105>37<option value=115>38<option value=125>39
<option value=15>40<option value=25>41<option value=35>42<option value=45>43<option value=55>44<option value=65>45
<option value=75>46<option value=85>47<option value=95>48<option value=105>49<option value=115>50<option value=125>51
<option value=75>52<option value=85>53<option value=15>54<option value=15>55<option value=15>56<option value=15>57
<option value=75>58<option value=85>59<option value=15>60
</select>
				
				</td></tr><tr><td align="center"><br><input type="button" value="Calculate" onClick="showResults();" class="drop3" style="background-color: #3399CC; color: #FFCC33; font-weight: bold"></td></tr></table></form></td></tr></table></td></tr></table>
				
				 <script language="JavaScript" type="text/javascript">
          <!--
					function showResults() {
											
						                                        var targetDate = new Date();
					targetDate.setFullYear(document.Conception.cYear.value,document.Conception.cMonth.value,document.Conception.cDate.value);
					                                        var lmpDate = new Date();
                                        var ovulateDate = new Date();
                                        var dueDate = new Date();
                                        var conceptionDate = new Date();
					var conceptionDate2 = new Date();
                                         if (document.Conception.DateType.value==2) {
                                         dueDate.setFullYear(targetDate.getFullYear(),targetDate.getMonth(),targetDate.getDate());
					 lmpDate.setFullYear(dueDate.getFullYear(),dueDate.getMonth(),dueDate.getDate());
					 lmpDate.setDate(dueDate.getDate()-280);
					 } else {
						 dueDate.setFullYear(targetDate.getFullYear(),targetDate.getMonth(),targetDate.getDate());
						 lmpDate.setFullYear(dueDate.getFullYear(),dueDate.getMonth(),dueDate.getDate());
						 lmpDate.setDate(dueDate.getDate()-(280 - document.Conception.DateTypepr.value));
					   }
              if(document.getElementById('frmRitu:lifeuser').value.length>0)
                {
            	  
					ovulateDate.setFullYear(lmpDate.getFullYear(),lmpDate.getMonth(),lmpDate.getDate());
					ovulateDate.setDate(lmpDate.getDate()+14);
					conceptionDate.setFullYear(lmpDate.getFullYear(),lmpDate.getMonth(),lmpDate.getDate());
					conceptionDate.setDate(lmpDate.getDate()+10);
					conceptionDate2.setFullYear(lmpDate.getFullYear(),lmpDate.getMonth(),lmpDate.getDate());
					conceptionDate2.setDate(lmpDate.getDate()+18);
					var lmpHTML, ovulateHTML, conceptnHTML, dueHTML;
					var thisMoment= new Date();
					lmpHTML=months[lmpDate.getMonth()] + " " + lmpDate.getDate() + ", " + lmpDate.getFullYear();
					//lmp.innerHTML=lmpHTML;
					var ritu= "";
					ritu=getRitu(ovulateDate);
					var mon=targetDate.getMonth()+1 ;
					document.getElementById('frmRitu:jspRituDate').value= targetDate.getDate() + "/" + mon + "/"  + targetDate.getFullYear();
					var ttt=Date.parse("18/02/"+ovulateDate.getFullYear());
					 
					/*if (ovulateDate>=Date.parse("02/18/"+ovulateDate.getFullYear()+ " 17:30:57") && ovulateDate<=Date.parse("04/20/"+ovulateDate.getFullYear()+ " 03:32:55"))
						ritu="Vasant Ritu (Indian Spring)";
					else if (ovulateDate>=Date.parse("04/20/"+ovulateDate.getFullYear()+ " 03:32:56") && ovulateDate<=Date.parse("06/21/"+ovulateDate.getFullYear()+ " 10:33:25"))
						ritu="Grishma Ritu (Indian Summer)";
					else if (ovulateDate>=Date.parse("06/21/"+ovulateDate.getFullYear()+ " 10:33:26") && ovulateDate<=Date.parse("08/23/"+ovulateDate.getFullYear()+ " 04:30:55"))
						ritu="Varsha Ritu (Indian Monsoon)";    
					else if (ovulateDate>=Date.parse("08/23/"+ovulateDate.getFullYear()+ " 04:30:56") && ovulateDate<=Date.parse("10/23/"+ovulateDate.getFullYear()+ " 11:39:17"))
						ritu="Sharad Ritu (Indian Autumn)";
					else if (ovulateDate>=Date.parse("10/23/"+ovulateDate.getFullYear()+ " 11:39:18") && ovulateDate<=Date.parse("12/21/"+ovulateDate.getFullYear()+ " 22:40:35"))
						ritu="Hemant Ritu (Indian Pre winter)";
					else if (ovulateDate>=Date.parse("12/21/"+ovulateDate.getFullYear()+ " 22:40:36") && ovulateDate<=Date.parse("02/18/"+ovulateDate.getFullYear()+1+ " 23:28:35"))
						ritu="Shishir Ritu (Indian winter)"; 
					else //if (ovulateDate>=Date.parse("12/21/"+ovulateDate.getFullYear()-1) && ovulateDate<=Date.parse("02/18/"+ovulateDate.getFullYear()))
						ritu="Shishir Ritu (Indian winter)"; 
					if(ovulateDate.getMonth()>=2 && ovulateDate.getDate()>=18 && ovulateDate.getDate()>=19 && ovulateDate.getMonth()<=4)
						ritu="Vasant Ritu (Indian Spring)";
					else if(ovulateDate.getMonth()>=4 && ovulateDate.getDate()>=20 && ovulateDate.getDate()>=21 && ovulateDate.getMonth()<=6)
						ritu="Grishma Ritu (Indian Summer)";
					else if(ovulateDate.getMonth()>=6 && ovulateDate.getDate()>=22 && ovulateDate.getDate()>=23 && ovulateDate.getMonth()<=8)
						ritu="Varsha Ritu (Indian Monsoon)";
					else if(ovulateDate.getMonth()>=8 && ovulateDate.getDate()>=23 && ovulateDate.getMonth()<=10)
						ritu="Sharad Ritu (Indian Autumn)";
					else if(ovulateDate.getMonth()>=10 && ovulateDate.getDate()>=22 && ovulateDate.getDate()>=23 && ovulateDate.getMonth()<=12)
						ritu="Varsha Ritu (Indian Monsoon)";*/
						
					ovulateHTML=months[ovulateDate.getMonth()] + " " + ovulateDate.getDate() + ", " + ovulateDate.getFullYear();
					//ovulate.innerHTML= ovulateHTML;
					
					//document.getElementById('divbtnritucal').style.visibility='visible';
					//document.getElementById('divjspbtn').style.visibility='visible';
					rituspan.innerHTML="<br><br>Probable Season of Conception:"+ ritu + "<br><br>Probable Season of Delivery : " +getRitu(targetDate);
					document.getElementById('frmRitu:jspRitu').value="Probable Season of Conception:"+ ritu;
				
					var ritus;
					if(getRitu(conceptionDate)!=getRitu(conceptionDate2))
						{ritus=getRitu(conceptionDate)+ " to " + getRitu(conceptionDate2);
						rituspan.innerHTML="<br>Probable Seasons of Conception:"+ritus+ "<br><br>Probable Season of Delivery : " +getRitu(targetDate);;
						document.getElementById('divbtnritucalsub').style.visibility='visible';
						document.getElementById('frmRitu:jspRitu').value = "Probable Seasons of Conception:" + ritus;
						}
					else
						{ritus=getRitu(conceptionDate);
						rituspan2.innerHTML="";
						document.getElementById('divbtnritucalsub').style.visibility='hidden';}
					conceptnHTML=months[conceptionDate.getMonth()] + " " + conceptionDate.getDate() + " <font color=black>to</font> " + months[conceptionDate2.getMonth()] + " " + conceptionDate2.getDate() + ", " + conceptionDate2.getFullYear();
					//conceptn.innerHTML=conceptnHTML;
					dueHTML=months[dueDate.getMonth()] + " " + dueDate.getDate() + ", " + dueDate.getFullYear();
					//due.innerHTML=dueHTML;
					//mbox.innerHTML="Welcome:"+document.getElementById('frmRitu:lifeuser').value+", "+ document.getElementById('frmRitu:jspRitu').value + " ,Click Proceed button to know Season of Birth and to generate Lifescope report.";
					$.msgBox.confirm("Welcome:"+document.getElementById('frmRitu:lifeuser').value+", "+ document.getElementById('frmRitu:jspRitu').value+ "<br>Season of Delivery : " +getRitu(targetDate) + "<br>Click Ok button to generate Lifescope report.",function(){
						 window.location="lifescopedataentry.faces?sdate="+targetDate.getDate() + "/" + mon + "/"  + targetDate.getFullYear();;
					},  false);
					
					//alert("Welcome:"+document.getElementById('frmRitu:lifeuser').value+", "+ document.getElementById('frmRitu:jspRitu').value + " ,Click Proceed button to know Season of Birth and to generate Lifescope report.");
					 
					}
					else
					{//document.getElementById('frmRitu:messagelife').value="Invalid User,Please log in";
					$.msgBox("Invalid User,Please log in", null, { title: "Lifescope" });
					window.location="login.faces";
					//alert("Invalid User,Please log in");
					}
              
         }
          function getRitu(dateval)
          {
               var ritu = "";
               if (dateval>=Date.parse("02/18/"+dateval.getFullYear()+ " 17:30:57") && dateval<=Date.parse("04/20/"+dateval.getFullYear()+ " 03:32:55"))
					ritu="Vasant Ritu (Indian Spring)";
				else if (dateval>=Date.parse("04/20/"+dateval.getFullYear()+ " 03:32:56") && dateval<=Date.parse("06/21/"+dateval.getFullYear()+ " 10:33:25"))
					ritu="Grishma Ritu (Indian Summer)";
				else if (dateval>=Date.parse("06/21/"+dateval.getFullYear()+ " 10:33:26") && dateval<=Date.parse("08/23/"+dateval.getFullYear()+ " 04:30:55"))
					ritu="Varsha Ritu (Indian Monsoon)";    
				else if (dateval>=Date.parse("08/23/"+dateval.getFullYear()+ " 04:30:56") && dateval<=Date.parse("10/23/"+dateval.getFullYear()+ " 11:39:17"))
					ritu="Sharad Ritu (Indian Autumn)";
				else if (dateval>=Date.parse("10/23/"+dateval.getFullYear()+ " 11:39:18") && dateval<=Date.parse("12/21/"+dateval.getFullYear()+ " 22:40:35"))
					ritu="Hemant Ritu (Indian Pre winter)";
				else if (dateval>=Date.parse("12/21/"+dateval.getFullYear()+ " 22:40:36") && dateval<=Date.parse("02/18/"+dateval.getFullYear()+1+ " 23:28:35"))
					ritu="Shishir Ritu (Indian winter)"; 
				else //if (dateval>=Date.parse("12/21/"+dateval.getFullYear()-1) && dateval<=Date.parse("02/18/"+dateval.getFullYear()))
					ritu="Shishir Ritu (Indian winter)"; 
               return ritu;
          }
                    
          //-->
         </script>
	<script language="JavaScript" type="text/javascript">
      <!--
      FindDates();
      //-->
    </script>
<br>
</td></tr><tr><td width="590">&nbsp; </td></tr></table>
</td>
<td valign="middle" >


<div  id="divbtnritucal" style="visibility:hidden"> 
<table  height="351" width="300"  background="images/banner.png">
<tr>
<td><font color="#FFCC66" size="5">
&nbsp;<b> <span id="rituspan"></span></font></b>
</div>

<div  id="divbtnritucalsub" style="visibility:hidden"> <font color="yellow" size="8">
&nbsp;<b> <span id="rituspan2"></span></font></b>
</div>
</td>
</tr>
</table>
</div>




</td>
</tr>
</table>
</td></tr></table></td></tr></table>

<f:view>
<h:form id="frmRitu">
<h:commandButton onclick="showResults()" id="ss" value="Proceed" rendered="false" action="#{grahanila.ritutolifescope}" >
<f:setPropertyActionListener value="#{sessionScope.rirudt}"
	target="#{sessionScope.rirudate}" />																				
<f:setPropertyActionListener value="#{sessionScope.riruName1}"
	target="#{sessionScope.riruName}" />																					
</h:commandButton>
<h:inputHidden id="lifeuser" value="#{sessionScope.secusername}"></h:inputHidden>

<div  id="divjspbtn" class="divstyle" style="visibility:hidden"> 
<h:inputHidden id="jspRituDate" value="#{sessionScope.rirudt}"></h:inputHidden>
<h:inputHidden id="jspRitu" value="#{sessionScope.riruName1}"></h:inputHidden>

</div>
</h:form>
</f:view>
</body>
</html>
