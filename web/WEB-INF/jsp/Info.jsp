<%-- 
    Document   : Info
    Created on : Dec 22, 2017, 2:28:14 PM
    Author     : user
--%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Coba Aja</title>
    </head>
    <body>
        <h1 align="center">Contoh penggunaan i18n</h1>
        <h2 align="center"><spring:message code="label.title" /></h2>
        <label><spring:message code="label.username" /></label>: <br/>
        <label><spring:message code="label.password" /></label>: 
        <p></p>
    </body>
</html>

