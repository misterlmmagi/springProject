<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html> 
<html>
    <jsp:include page="head.jsp">
        <jsp:param name="title" value="New player"/>
    </jsp:include>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <h3><spring:message code="label.username"/>: ${updatePlayer.username}</h3>
            <form:form commandName="updatePlayer" method="POST" action="update.htm">
                <p class="form-group">
                    <label class="control-label" for="name"><spring:message code="label.firstName"/>:</label>
                    <form:input id="name" path="name"/>
                    <form:errors path="name"/>
                </p>
                <p class="form-group">
                    <label class="control-label" for="family-name"><spring:message code="label.name"/>:</label>
                    <form:input id="family-name" path="familyName"/>
                    <form:errors path="familyName" element="span"/>
                </p>
                <p>
                    <label for="save" class="glyphicon glyphicon-floppy-disk"></label>
                    <input id="save" type="submit" value="save"/>
                </p>
            </form:form>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>