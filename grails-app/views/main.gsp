<%--
  Created by IntelliJ IDEA.
  User: ankshrestha
  Date: 7/27/16
  Time: 5:50 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Main Page</title>
    <asset:javascript src="application.js"/>
    <asset:javascript src="person/module.js"/>
    <asset:stylesheet src="application.css"/>
</head>

<body ng-app="myApp" ng-controller="myController">
    <div>Main Page</div>

        <div>
            <button type="button" class="btn btn-primary">Primary</button>
            Header
        </div>

        <footer>
            <p>{{authorName}}</p>
        </footer>

</body>
</html>