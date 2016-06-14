'use strict';
moduloSistema.controller('EliminadoController', ['$scope', '$routeParams', '$location', 'serverService', 'sessionService', '$rootScope',
    function ($scope, $routeParams, $location, serverService, sessionService, $rootScope) {

        $scope.icon = "/images/U.png";

        serverService.getDataFromPromise(serverService.getLogoutPromise()).then(function (result) {

            if (result) {
                if (result.status == 200) {
                    $rootScope.isSessionActive = false;
                    $rootScope.tipousuario = 0;
                }
            } else {
                $rootScope.isSessionActive = true;

            }
        });

        $scope.close = function () {
            $location.path('/home');
        };
    }]
        );


