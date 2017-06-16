<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit your listing" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container" id="adDescription">
    <h1>Edit your Listing</h1>
    <form action="/ads/edit" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text">${ad.description}</textarea>
        </div>
        <div class="form-group">
            <label for="category">Categories</label>
            <textarea id="category" name="category" class="form-control" type="text">${ad.category}</textarea>
        </div>
        <input type="hidden" name="id" value="${ad.id}">
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
