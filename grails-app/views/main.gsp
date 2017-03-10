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
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="person/module.js"/>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular-route.min.js"></script>
</head>

<body ng-app="myApp" ng-controller="driversController">
    <ng-view></ng-view>
    %{--<input type="text" ng-model="nameFilter" placeholder="Search .."/>--}%
    %{--<div>--}%
        %{--<h1><span>Welcome to F1 championships</span></h1>--}%

        %{--<table>--}%
            %{--<thead>--}%
                %{--<tr><th colspan="4">Drivers Championship Standings</th></tr>--}%
            %{--</thead>--}%
            %{--<tbody>--}%
                %{--<tr ng-repeat="driver in driversList | filter: searchFilter" >--}%
                    %{--<td ng-bind="$index + 1"></td>--}%
                    %{--<td><img src="img/flags/{{driver.Driver.nationality}}.png" />--}%
                    %{--<td>{{driver.Driver.givenName}}&nbsp;{{driver.Driver.familyName}}</td>--}%
                    %{--</td>--}%
                    %{--<td>{{driver.Constructors[0].name}}</td>--}%
                    %{--<td>{{driver.points}}</td>--}%
                %{--</tr>--}%
            %{--</tbody>--}%
        %{--</table>--}%
    %{--</div>--}%

</body>

</html>