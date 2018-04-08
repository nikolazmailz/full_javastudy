<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@attribute name="title" fragment="true" %>

<head>
    <title><jsp:invoke fragment="title"/></title>

    <!— jQuery —>
    <spring:url value="/webjars/jquery/1.11.1/jquery.js" var="jqueryjs"/>
    <script src="${jqueryjs}"></script>

    <spring:url value="/webjars/bootstrap/3.3.6/js/bootstrap.js" var="bootstrapjs"/>
    <script src="${bootstrapjs}"></script>

    <%--<spring:url value="/webjars/jqgrid/4.7.0/js/minified/jquery.jqGrid.min.js" var="jqgridjs"/>--%>
    <%--<script src="${jqgridjs}"></script>--%>

    <%--<spring:url value="/webjars/jqgrid/4.7.0/js/i18n/grid.locale-ru.js" var="jqgridi18njs"/>--%>
    <%--<script src="${jqgridi18njs}"></script>--%>

    <!— CSS —>
    <%--<spring:url value="/webjars/jqgrid/4.7.0/css/ui.jqgrid.css" var="jqgridcss"/>--%>
    <%--<link href="${jqgridcss}" rel="stylesheet" />--%>

    <%--<spring:url value="/webjars/jquery-ui/1.12.1/jquery-ui.theme.min.css" var="jqueryuicss"/>--%>
    <%--<link href="${jqueryuicss}" rel="stylesheet" />--%>

    <spring:url value="/webjars/bootstrap/3.3.6/css/bootstrap.css" var="bootstrap"/>
    <link href="${bootstrap}" rel="stylesheet" />

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Start Bootstrap</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <c:url value="/about.html" var="about"/>
                <c:url value="/jdbc.html" var="jdbc"/>
                <%--<c:url value="/email.html" var="email"/>--%>
                <li><a href="${about}">About</a></li>
                <li><a href="${jdbc}">jdbc</a></li>
                <li><a href="${email}">email</a></li>
                <%--<li class="dropdown">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">Tutorial<b class="caret"></b></a>--%>
                    <%--<ul class="dropdown-menu">--%>
                        <%--<c:url value="/file.html" var="file"/>--%>
                        <%--<li>--%>
                            <%--<a href="${file}">Загрузка файла PDF и Excel</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="portfolio-2-col.html">Lesson 2</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="portfolio-3-col.html">Lesson 3</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="portfolio-4-col.html">Lesson 5</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="portfolio-item.html">Lesson 5</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>


<jsp:doBody/>


<div class="container">
    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright © Your Website 2014</p>
            </div>
        </div>
    </footer>
</div>

</body>

</html>