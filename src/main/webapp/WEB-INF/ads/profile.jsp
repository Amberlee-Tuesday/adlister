
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Listing" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="adDescription" class="container">
        <h1><c:out value="${ad.title}" /></h1>
        <p><c:out value="${ad.description}"/></p>
        <p>Categories: <c:out value="${ad.category}"/></p>
        <c:if test="${sessionScope.user.id == ad.userId}">
            <h5><a href="/ads/edit?id=${ad.id}">Edit Ad</a></h5>
            <h5><a href="/ads/delete?id=${ad.id}">Delete Ad</a></h5>
        </c:if>
    </div>
</body>
</html>
