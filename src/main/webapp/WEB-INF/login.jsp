<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div id="adDescription" class="container">
        <div class="center-content">
            <h1>Please Log In</h1>
            <form action="/login" method="POST">
                <div id="username" class="form-group">
                    <label for="username">Username</label>
                    <input id="username" name="username" class="form-control" type="text" value="${user.username}">
                </div>
                <div id="password" class="form-group">
                    <label for="password">Password</label>
                    <input id="password" name="password" class="form-control" type="password">
                </div>
                <input id="loginBtn" type="submit" class="btn btn-primary btn-block" value="Log In">
            </form>
            <div>
                <h3><a href="/register">New? Register For ListSpot</a></h3>
            </div>
        </div>
    </div>
</body>
</html>
