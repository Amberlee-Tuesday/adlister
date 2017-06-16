<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Searching Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div id="adDescription" class="container">
    <h1>Here are your search results!</h1>
    <form action="/ads/search" method="post">
        <div class="form-inline">
            <label for="search"></label>
            <input id="search" name="search" class="form-control" type="text">
            <input type="submit" value="Search" id="submit">
        </div>
    </form>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <img src="">
            <h2><a href="/ads/profile?id=${ad.id}"><c:out value="${ad.title}"/></a></h2>
            <p><c:out value="${ad.description}"/></p>
            <p><c:out value="${ad.category}"/></p>
        </div>
    </c:forEach>
</div>


</body>
</html>
