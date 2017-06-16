<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="${sessionScope.user.username}'s Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div id="adDescription" class="container">
        <h1>Welcome, <c:out value="${sessionScope.user.username}" />!</h1>
    </div>
    <div>
    <c:forEach var="ad" items="${ads}">
        <div id="adDescription" class="col-md-6">
            <img src="">
            <h2><a href="/ads/profile?id=${ad.id}"><c:out value="${ad.title}"/></a></h2>
            <p><c:out value="${ad.description}"/></p>
            <p><c:out value="${ad.category}"/></p>
        </div>
    </c:forEach>
    </div>

</body>
</html>
