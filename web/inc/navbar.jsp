<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@page import="trung.utils.API" %>--%>
<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark sticky-top" arial-label="Furni navigation bar" >
    <div class="container">
        <a class="navbar-brand" href="home">IPS<span>.</span></a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsFurni">
            <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
                <li class="nav-item active">
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li><a class="nav-link" href="shop">Shop
                        <ul class="dropdown-menu">
                            <c:forEach items ="${listCategory}" var="category">
                                <li><a class="dropdown-item" href="#">${category.name}</a></li>
                                </c:forEach>
                        </ul>
                    </a>
                </li>
                <li><a class="nav-link" href="blog">Blog</a></li>
                <li><a class="nav-link" href="contact">Contact us</a></li>
            </ul>
            <ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
                <c:if  test="${user==null}">
                    <li>
                        <a class="nav-link" href="login"><img src="./assets/images/user.svg">Login</a>
                    </li>
                </c:if>
                <c:if  test="${user!=null}">
                    <a  class="nav-link" href="login"><img style="padding-right: 12px" src="./assets/images/user.svg">${user.getName()}</a>
                    </c:if>

                <li>
                    <a class="nav-link" href="./views/logout.jsp">Logout</a>
                </li>
                <li>
                    <a class="nav-link" href="cart"><img src="./assets/images/cart.svg">${cart.size()}</a>
                </li>
            </ul>
        </div>
    </div>
</nav>