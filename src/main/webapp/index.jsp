<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <div class="adDescription">
            <h1 id="welcome">Welcome to ListSpot!</h1>
            <p>Your spot for listing classifieds to the online community!</p>
            <p><a href="/login">Login </a> or <a href="/register"> Register</a></p>
        </div>
    </div>
</body>
</html>
