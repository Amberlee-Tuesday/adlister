<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container" id="adDescription">
    <h1 id="mainTxt">Here are all the current listings!</h1>
    <div>
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <img src="">
                <h2><a href="/ads/profile?id=${ad.id}"><c:out value="${ad.title}"/></a></h2>
                <p><c:out value="${ad.description}"/></p>
                <p><c:out value="${ad.category}"/></p>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
