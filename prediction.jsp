<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome to Kidscope</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"  media="print" type="text/css" href="stylesheet/print.css" />
<script type="text/javascript">
<!--
function MM_showHideLayers() { //v9.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) 
  with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->
</script>
</head>
<body>
<f:view >
<h:form >
 <table width="96%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <td colspan="2" ><div id="prn1" onClick="MM_showHideLayers('prn1','','hide','prn','','show')"><table width="96%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="84%">&nbsp;</td>
                <td width="5%">&nbsp;</td>
                
                <td width="6%" align="center"> <a href="Javascript:self.print()"><img src="images/print.png" alt="Print this page" width="28" height="28" border="0"  /></a></td>
               
              <td width="5%">&nbsp;</td>
              </tr>
         </table> </div>
         <table width="96%" border="0" align="center" cellpadding="3" cellspacing="3">
<tr><td align="right"><img src="images/kidslogo.jpg" width="128" height="36"></td>
</tr>
</table>
<div class="prn">
  <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>
          </td>
          </tr>
        <tr>
        <td  colspan="2" align="center" class="h1"><b><h:outputLabel id="aa" value="#{grahanila.parentname}"></h:outputLabel></b></td>
        </tr>
       
        <tr>
          <td width="36%" class="h2"><b>Kid Astro*</b></td>
          <td width="64%" class="h2">&nbsp;</td>
        </tr>
        
        <tr>
          <td class="txt"><b><h:outputLabel id="add" value= "#{grahanila.welcome}"></h:outputLabel></b>
         </td>
        </tr>
<tr><td>&nbsp;</td></tr>
 
<tr><td><table  align="left" cellpadding="0" cellspacing="0" border="0"  >           
<tr>


<td><table bordercolor="#000000"  align="center" cellpadding="0" cellspacing="0" border="1" width="200px" height="200px">
<tr> 
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.pos12}" styleClass="grahanila">
</h:outputText> </td>
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.pos1}" styleClass="grahanila">
</h:outputText> </td>
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.pos2}" styleClass="grahanila">
</h:outputText> </td>
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.pos3}" styleClass="grahanila">
</h:outputText> </td>
</tr>

<tr> 
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.pos11}" styleClass="grahanila">
</h:outputText> </td>
<td  width="50px" height="50px" colspan="2"   class="txt1" align="center" rowspan="2" bgcolor="white">
<h:outputText value="#{grahanila.grahanila}" >
</h:outputText> </td>

<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.pos4}" styleClass="grahanila">
</h:outputText> </td>
</tr>

<tr> 
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.pos10}" styleClass="grahanila"></h:outputText> </td>
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.pos5}"  styleClass="grahanila">
</h:outputText>
</td>
</tr>

<tr style="mal"> 
<td width="125px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.pos9}" styleClass="grahanila">
</h:outputText> </td>
<td width="125px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.pos8}" styleClass="grahanila">
</h:outputText> </td>
<td width="125px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.pos7}" styleClass="grahanila">
</h:outputText> </td>
<td width="125px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.pos6}" styleClass="grahanila">
</h:outputText> </td></tr>
</table></td>




<td>&nbsp;</td>
<td>&nbsp;</td>





<td><table   align="center" cellpadding="0" cellspacing="0" border="1" width="200px" height="200px">
<tr> 
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.npos12}" styleClass="grahanila">
</h:outputText> </td>
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.npos1}" styleClass="grahanila">
</h:outputText> </td>
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.npos2}" styleClass="grahanila">
</h:outputText> </td>
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.npos3}" styleClass="grahanila">
</h:outputText> </td>
</tr>

<tr> 
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.npos11}" styleClass="grahanila">
</h:outputText> </td>
<td  width="50px" height="50px" colspan="2"  align="center"  class="txt1" rowspan="2" bgcolor="white">
<h:outputText value="#{grahanila.navashakam}" >
</h:outputText> </td>

<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.npos4}" styleClass="grahanila">
</h:outputText> </td>
</tr>

<tr> 
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.npos10}" styleClass="grahanila"></h:outputText> </td>
<td width="50px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.npos5}"  styleClass="grahanila">
</h:outputText>
</td>
</tr>

<tr> 
<td width="125px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.npos9}" styleClass="grahanila">
</h:outputText> </td>
<td width="125px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.npos8}" styleClass="grahanila">
</h:outputText> </td>
<td width="125px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.npos7}" styleClass="grahanila">
</h:outputText> </td>
<td width="125px" height="50px" align="center" class="txt1"><h:outputText value="#{grahanila.npos6}" styleClass="grahanila">
</h:outputText> </td></tr>
</table></td>



</tr>
</table></td></tr>
<tr>
<td>&nbsp;</td>
</tr>
 <tr>
   <td width="36%" class="h2"><b>Kid Profile</b></td>
   <td width="64%" class="h2">&nbsp;</td>
 </tr>
<tr>
<td height="5"></td>
</tr>
<tr> <td>       
 <table align="left" cellpadding="1" cellspacing="1" border="1"  width="660px" >       
        <tr> 
        <td class="txt"><h:outputLabel id="e" value="#{grahanila.father}"></h:outputLabel> </td>
        <td class="txt"><h:outputLabel id="ee" value="#{grahanila.fathername}"></h:outputLabel> </td>
       </tr>
       <tr> 
        <td class="txt"><h:outputLabel id="f" value="#{grahanila.mother}"></h:outputLabel> </td>
       <td class="txt"><h:outputLabel id="ff" value="#{grahanila.mothername}"></h:outputLabel> </td>
       </tr>
       <tr> 
  <td class="txt"><h:outputLabel id="b" value="#{grahanila.dateofbirth}"></h:outputLabel> </td>
  <td class="txt"><h:outputLabel id="bb" value="#{grahanila.birth_date}"><f:convertDateTime pattern="dd/MM/yyyy"/></h:outputLabel> 
</td>
</tr>

<tr> 
  <td class="txt"><h:outputLabel id="bm" value="#{grahanila.birthday}"></h:outputLabel> </td>
  <td class="txt"><h:outputLabel id="bbm" value="#{grahanila.weekname}"></h:outputLabel> 
</td>
</tr>
<tr> 
  <td class="txt"><h:outputLabel id="ll" value="#{grahanila.timeofbirthchild}"></h:outputLabel> </td>
  <td class="txt"><h:outputLabel id="bbl" value="#{grahanila.birth_date}"><f:convertDateTime pattern="HH:mm:ss"/></h:outputLabel> 
</td>
</tr>

<tr> 
  <td class="txt"><h:outputLabel id="d" value="#{grahanila.placeofbirth}"></h:outputLabel> </td>
  <td class="txt"><h:outputLabel id="dd" value="#{grahanila.cplace}"></h:outputLabel> </td>
</tr>
<tr> 
  <td class="txt"><h:outputLabel id="g" value="#{grahanila.gender}"></h:outputLabel> </td>
  <td class="txt"><h:outputLabel id="gg" value="#{grahanila.sexname}"></h:outputLabel> </td>
</tr>
<tr> 
 <tr> 
<td class="txt"><h:outputLabel id="fg" value="#{grahanila.lang}"></h:outputLabel> </td>
<td class="txt"><h:outputLabel id="ffdd" value="#{grahanila.langugeName}"></h:outputLabel> </td>
</tr>       
        
  <tr> 
<td class="txt"><h:outputLabel id="ej" value="#{grahanila.dealernumber}"></h:outputLabel> </td>
<td class="txt"><h:outputLabel id="rg" value="#{grahanila.dealeNo}"></h:outputLabel> </td>
</tr>       
  <tr> 
<td class="txt"><h:outputLabel id="h" value="#{grahanila.dealername}"></h:outputLabel> </td>
<td class="txt"><h:outputLabel id="hh" value="#{grahanila.dealeName}"></h:outputLabel> </td>
</tr>             
  <tr> 
<td class="txt"><h:outputLabel id="k" value="#{grahanila.childstar}"></h:outputLabel> </td>
<td class="txt"><h:outputLabel id="kk" value="#{grahanila.starnam}"></h:outputLabel> </td>
</tr>      
        
 <tr> 
<td class="txt"><h:outputLabel id="i" value="#{grahanila.thiti}"></h:outputLabel> </td>
<td class="txt"><h:outputLabel id="ii" value="#{grahanila.thithi}"></h:outputLabel> </td>
</tr>
<tr> 
<td class="txt"><h:outputLabel id="z" value="#{grahanila.karna}"></h:outputLabel> </td>
<td class="txt"><h:outputLabel id="zz" value="#{grahanila.karana}"></h:outputLabel> </td>
</tr>       
        
 <tr> 
<td class="txt"><h:outputLabel id="p" value="#{grahanila.yog}"></h:outputLabel> </td>
<td class="txt"><h:outputLabel id="pp" value="#{grahanila.yoga}"></h:outputLabel></td>
</tr>       
 <tr> 
<td class="txt"><h:outputLabel id="n" value= "#{grahanila.legnamsign}"></h:outputLabel> </td>
<td class="txt"><h:outputLabel id="nn" value="#{grahanila.legnumsign}"></h:outputLabel> </td>
</tr>

<tr> 
<td class="txt"><h:outputLabel id="o" value="#{grahanila.moonsignn}"></h:outputLabel> </td>
<td class="txt"><h:outputLabel id="oo" value="#{grahanila.sunsignMoon}"></h:outputLabel></td>
</tr>       
        
 <tr> 
<td class="txt"><h:outputLabel id="km" value="#{grahanila.ganam}"></h:outputLabel>
<h:outputLabel id="km1" value="#{grahanila.devatha}"></h:outputLabel>
<h:outputLabel id="km2" value="#{grahanila.tree}"></h:outputLabel>
 </td>
<td class="txt"><h:outputLabel id="kkm" value="#{grahanila.stardetails1}"></h:outputLabel> </td>
</tr>

<tr> 
<td class="txt"><h:outputLabel id="kmh" value="#{grahanila.yoni}"></h:outputLabel> 
<h:outputLabel id="kmh1" value="#{grahanila.bhootham}"></h:outputLabel> 
<h:outputLabel id="kmh2" value="#{grahanila.animal}"></h:outputLabel> 
<h:outputLabel id="kmh3" value="#{grahanila.bird}"></h:outputLabel> 
</td>
<td class="txt"><h:outputLabel id="kkhm" value="#{grahanila.stardetails2}"></h:outputLabel> </td>
</tr> 
<tr>       
<td class="txt"><h:outputLabel id="s" value="#{grahanila.dasa}"></h:outputLabel> </td>
<td class="txt"><h:outputLabel id="ss" value="#{grahanila.fdasa}"></h:outputLabel></td>
</tr>        
</table></td></tr> 
 <tr><td>&nbsp;</td></tr>
<tr><td class="txt"><b><h:outputText value=" #{grahanila.character}" ></h:outputText></b></td></tr>
<tr>
<td height="5"></td>
</tr>
<tr><td class="txt" colspan="2"><h:outputText  value="#{grahanila.starprediction}" ></h:outputText></td></tr>
<tr>
<td height="5"></td>
</tr>
<tr><td  class="txt" colspan="2"><b><h:outputText  value="#{grahanila.health}" ></h:outputText></b></td></tr>
<tr>
<td height="5"></td>
</tr>
<tr><td  class="txt" colspan="2"><h:outputText  value="#{grahanila.healthprediction}" ></h:outputText></td></tr>
<tr>
<td height="5"></td>
</tr>
<tr>
<td height="5"></td>
</tr>

<tr>
<td height="5"></td>
</tr> 
 <tr><td>&nbsp;</td></tr> 
</table></div>
<!--Second Page Starts here-->
<table width="96%" border="0" align="center" cellpadding="2" cellspacing="2"><tr><td align="right"><img src="images/kidslogo.jpg" width="128" height="36"></td>
</tr></table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr><td>
<div class="prn"><table width="96%" border="0" align="center" cellpadding="2" cellspacing="2">
<tr>
<td>&nbsp;</td>
</tr>
<tr><td  class="txt" colspan="2"><b><h:outputText  value="#{grahanila.job}" ></h:outputText></b></td></tr>
<tr><td  class="txt" colspan="2"><h:outputText  value="#{grahanila.careerprediction}" ></h:outputText></td></tr>

<tr><td  class="txt" colspan="2"><h:outputText  value="#{grahanila.wealthprediction}" ></h:outputText></td></tr>
<tr><td  class="txt" colspan="2"><b><h:outputText  value="#{grahanila.diet}" ></h:outputText></b></td></tr>
<tr>
<td height="5"></td>
</tr>
<tr><td  class="txt" colspan="2"><h:outputText  value="#{grahanila.dietprediction}" ></h:outputText></td></tr>
<tr>
<td height="5"></td>
</tr>
<tr><td  class="txt" colspan="2"><b><h:outputText  value="#{grahanila.remedy}" ></h:outputText></b></td></tr>
<tr>
<td height="5"></td>
</tr>
<tr><td class="txt" colspan="2"><h:outputText  value="#{grahanila.remedyprediction}" ></h:outputText></td></tr>

<tr><td  class="txt" colspan="2"><h:outputText  value="#{grahanila.ragam}" ></h:outputText></td></tr> 
<tr><td class="txt" colspan="2"><b><h:outputText  value="#{grahanila.vocal}" ></h:outputText></b></td></tr>

<tr><td class="txt" colspan="2"><h:outputText  value="#{grahanila.generalvocal}" ></h:outputText></td></tr>

<tr><td class="txt" colspan="2"><b><h:outputText  value="#{grahanila.cradle}" ></h:outputText></b></td></tr>

<tr><td class="txt" colspan="2"><h:outputText  value="#{grahanila.generalcradle}" ></h:outputText></td></tr>

<tr><td class="txt" colspan="2"><b><h:outputText  value="#{grahanila.ricefeed}" ></h:outputText></b></td></tr>

<tr><td class="txt" colspan="2"><h:outputText  value="#{grahanila.generalrice}" ></h:outputText></td></tr>

<tr><td class="txt" colspan="2"><b><h:outputText  value="#{grahanila.initiation}" ></h:outputText></b></td></tr>

<tr><td class="txt" colspan="2"><h:outputText  value="#{grahanila.generalinitial}" ></h:outputText></td></tr>

<tr><td class="txt" colspan="2"><b><h:outputText binding="#{grahanila.kathukuth}" rendered="true" value="#{grahanila.earpierce}" ></h:outputText></b></td></tr>

<tr><td class="txt" colspan="2"><h:outputText  value="#{grahanila.generalearpiercing}" ></h:outputText></td></tr>
 
<tr><td class="txt"><h:graphicImage value="#{grahanila.milestone}"></h:graphicImage></td></tr>
<tr><td height="5"></td></tr>    
</table></div>
</td></tr></table>

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td><table width="96%" border="0" align="center" cellpadding="2" cellspacing="2"><tr><td align="right"><img src="images/kidslogo.jpg" width="128" height="36"></td>
</tr></table></td>
</tr>
</table>
<!--Third Page Starts here-->
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr><td>
<div class="prn"><table width="96%" border="0" align="center" cellpadding="2" cellspacing="2">
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr><td class="h2"><b><u><h:outputText value=" Numerology Prediction" ></h:outputText></u></b></td></tr>

<tr><td class="txt"><h:outputText id="eysu" value="#{grahanila.birno}"></h:outputText></td></tr>

<tr><td class="txt"><h:outputText id="hhs" value="#{grahanila.birthnum}"></h:outputText></td></tr>
 
<tr><td class="txt" colspan="2"><b><h:outputText  value="#{grahanila.name}" ></h:outputText></b></td></tr>

<tr><td class="txt" colspan="2"><h:outputText  value="#{grahanila.letterpred}" ></h:outputText></td></tr>

<tr><td class="txt" colspan="2"><b><h:outputText  value="#{grahanila.goodday}" ></h:outputText></b></td></tr>

<tr><td class="txt" colspan="2"><h:outputText  value="#{grahanila.daypred}" ></h:outputText></td></tr>


<tr><td class="txt" colspan="2"><b><h:outputText  value="#{grahanila.goodstone}" ></h:outputText></b></td></tr>

<tr><td class="txt" colspan="2"><h:outputText    value="#{grahanila.stonepred}" ></h:outputText></td></tr>


<tr><td class="txt" colspan="2"><b><h:outputText  value="#{grahanila.colour}" ></h:outputText></b></td></tr>

<tr><td class="txt" colspan="2"><h:outputText   value="#{grahanila.colourpred}" ></h:outputText></td></tr>
<tr><td class="txt" colspan="2"></td><td></tr>
    
</table>
						<table width="96%" border="0" align="center" cellpadding="2"
							cellspacing="2">
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td><h:outputLabel value="#{grahanila.planetElementPercentage}"/></td>
							</tr>
							<tr>
								<td></td>
								<td class="h4">Disclaimer</td>
							</tr>
							<tr>
								<td></td>
								<td class="dis">FIITS advises you to consult with tarot
								readers for comprehensive inputs and details.</td>
							</tr>
							<tr>
								<td></td>
								<td class="dis">Parents who belong to other than Hindu
								community may follow rituals as per respective religious
								testament on overcoming the effect of unfavourable position of
								certain planet as per Kidscope.</td>
							</tr>
							<tr>
								<td></td>
								<td class="dis">*</td>
							</tr>
							<tr>
								<td></td>
								<td>&nbsp;
								
								</td>
							</tr>
						</table>
						</div>
</td></tr></table>

</h:form >
</f:view >
</body>
</html>

