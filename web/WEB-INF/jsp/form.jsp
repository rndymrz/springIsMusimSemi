<%-- 
    Document   : Form
    Created on : Dec 22, 2017, 4:34:45 PM
    Author     : user
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Registration</title>  
        <style>
            .error {
                color: red; font-weight: bold;
            }
        </style>
    </head>
    <body>
        
        <div class="container">
            <div class="card">
                <div class="card-header">
                    Registration Form
                </div>
                <div class="card-body">
                    <form:form action="${pageContext.request.contextPath}/register/save" modelAttribute="registerBean" method="POST" >
                        <table>
                            <tr><td><form:label path="firstName">First Name</form:label></td>
                                <td><form:input path="firstName"/></td><td><form:errors path="firstName" cssClass="error"/></td></tr>
                            <tr><td><form:label path="lastName">Last Name</form:label></td>
                                <td><form:input path="lastName"/></td><td><form:errors path="lastName" cssClass="error"/></td></tr>
                            
                            <tr><td><form:label path="email">Email</form:label></td>
                                <td><form:input path="email"/></td><td><form:errors path="email" cssClass="error"/></td></tr>
                            
                            <tr><td><form:label path="username">Username</form:label></td>
                                <td><form:input path="username"/></td><td><form:errors path="username" cssClass="error"/></td></tr>
                            <tr><td><form:label path="password">Password</form:label></td>
                                <td><form:password path="password" /></td><td><form:errors path="password" cssClass="error"/></td></tr>
                            <tr><td></td><td><form:button name="submitButton" value="Submit">Submit</form:button></td></tr>            
                            </table>            
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>