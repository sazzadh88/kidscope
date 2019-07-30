<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Login Form</title>
  <link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body >
<f:view>
<h:form id="frmcustomer">
<div align="center"><img align="absmiddle" src="images/lifelogo.png" >
  <section class="container">
    <div class="login">
      
    
        <p>User Name:
         <h:inputText id="login" value="#{dealer.useriddealer}"></h:inputText></p>
        <p>Password: <h:inputSecret value="#{dealer.password}"  id="password" > </h:inputSecret></p>
        <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Remember me on this computer
          </label>
        </p>
        <p class="submit"><h:commandButton action="#{dealer.loguser}" value="Login"/></p>
        <p><h:messages ></h:messages></p>
    </div>

     
  </section>
</div>
</h:form>
</f:view>
 
</body>

</html>