angular.module('myApp.driverService',[])
    .factory('ergastAPIservice',function ($http) {
       var ergastApi = {};

        ergastApi.getDrivers = function(){
            return $http({
                method: 'JSONP',
                url: 'http://ergast.com/api/f1/2013/driverStandings.json?callback=JSON_CALLBACK'
            });
        }

        console.log("HERE " + ergastApi);
        return ergastApi;
    });