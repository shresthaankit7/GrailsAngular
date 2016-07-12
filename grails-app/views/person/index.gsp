<%--
  Created by IntelliJ IDEA.
  User: ankit07
  Date: 7/11/16
  Time: 11:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<head>
    <title>Person</title>
</head>

<body>
<div ng-app="">
    <p>Name: <input type="text" ng-model="name"></p>
    <p ng-bind="name"></p>
</div>
</body>
</html>