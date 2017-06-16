
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">ListSpot</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <form class="navbar-form navbar-left" method="post" action="/ads" >
                <div class="form-group">
                    <input id="search" type="text" class="form-control" name="search" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${!sessionScope.isLoggedIn}">
                <li><a href="/ads">Listings</a></li>
                <li><a href="/login">Login</a></li>
                </c:if>
                <c:if test="${sessionScope.isLoggedIn}">
                <li><a href="/ads">Listings</a></li>
                <li><a href="/ads/create">Create Listing</a></li>
                <li><a href="/profile">Profile</a></li>
                <li><a href="/logout">Logout</a></li>
                </c:if>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

