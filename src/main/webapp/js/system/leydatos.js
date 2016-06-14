'use strict';
moduloSistema.controller('LeyDatosController', ['$scope', '$routeParams', '$location', 'serverService', 'sessionService', '$rootScope',
    function ($scope, $routeParams, $location, serverService, sessionService, $rootScope) {

        $scope.icon = "/images/U.png";


        $scope.aceptar = function () {
            $location.path('#/usuario/new');
        };
        
        $scope.close = function () {
            $location.path('/home');
        };
    }]
        );


