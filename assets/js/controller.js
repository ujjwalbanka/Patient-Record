var application = angular.module('app', ['ngRoute']);

application.controller('dashboard', function($scope, $location, $http, $timeout) {
    $scope.go = function(path) {
        $location.path(path);
    };
    $scope.setForm = function(form) {
        $scope.myForm = form;
    }
    $scope.notification = false;
    $scope.user = {};
    var today = new Date();
    $scope.today = today.toISOString();
    $scope.submit = function() {
        $http({
                method: 'POST',
                url: '/dataphi/submit.php',
                data: $scope.user, // pass in data as strings
            })
            .success(function(data) {
                $scope.notification = true;
                $timeout(function() {
                    $scope.notification = false
                }, 1000);
                $scope.user = {}
                $scope.myForm.$setUntouched();
                $scope.myForm.firstname.$setUntouched();
            })
            .error(function(error, status) {
                console.log(status);
            });
    };
    $scope.list = function() {
        $http({
                method: 'GET',
                url: '/dataphi/list.php',
            })
            .success(function(data) {
                $scope.recorddata = data;
                console.log(data);
            })
            .error(function(error, status) {
                console.log(status);
            });
    };
});

// Routing
application.config(function($routeProvider) {
    $routeProvider
        .when('/', {
            templateUrl: 'view/select.html'
        })
        .when('/input', {
            templateUrl: 'view/input.html'
        })
        .when('/list', {
            templateUrl: 'view/list.html'
        })
        .otherwise({
            redirectTo: '/'
        });
});
