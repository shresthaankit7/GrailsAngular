// myApp is dependent on myApp.driversController module
angular.module("myApp",['myApp.driversController','myApp.driverService','ngRoute'])
    .config(['$routeProvider',function($routeProvider){
        $routeProvider.
            when("/drivers",{templateUrl:"partials/drivers.html",controller:"driversController"}).
            when("/drivers/:id",{templateUrl:"partials/driver.html",controller:"driverController"}).
            otherwise({redirectTo: '/'});
    }]);
 