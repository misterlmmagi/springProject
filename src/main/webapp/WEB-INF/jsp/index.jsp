<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html> 
<html>
    <spring:message code="label.title" var="labelTitle"/>
    <jsp:include page="head.jsp">
        <jsp:param name="title" value="${labelTitle}"/>
    </jsp:include>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <p>body</p>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
