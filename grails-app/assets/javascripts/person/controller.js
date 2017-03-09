angular.module('myApp.driversController',[])
  .controller('driversController',function($scope,ergastAPIservice){
        $scope.nameFilter = null;
        $scope.driverList = [];

        $scope.searchFilter = function(driver){
            var keyWord = new RegExp($scope.nameFilter,'i');
            return !$scope.nameFilter|| keyWord.test(driver.Driver.givenName) || keyWord.test(driver.Driver.fa)
        };

        ergastAPIservice.getDrivers().success(function(response){
            //Dig into the responde to get the relevant data
            $scope.driversList = response.MRData.StandingsTable.StandingsLists[0].DriverStandings;
        });
      
  });