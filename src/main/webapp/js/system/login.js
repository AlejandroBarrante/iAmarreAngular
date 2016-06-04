'use strict';
moduloSistema.controller('LoginController', ['$scope', '$routeParams', '$location', 'serverService', '$rootScope',
    function ($scope, $routeParams, $location, serverService, $rootScope) {

        $scope.title = "Inicio de Sesión";
        $scope.icon = "/images/U.png";

        $scope.user = {};
        $scope.user.username = 'alex';
        $scope.user.password = 'daw1516';



        $scope.login = function () {

            serverService.getDataFromPromise(serverService.getLoginPromise($scope.user.username, $scope.user.password)).then(function (result) {
                if (result) {
                    if (result.status == 200) {
                        serverService.getDataFromPromise(serverService.promise_getUserSession()).then(function (result2) {
                            if (result2) {
                                $rootScope.userid = result2.message.id;
                                $rootScope.tipousuario = result2.message.obj_tipousuario.id;
                                $rootScope.login = result2.message.login;
                            }
                        })
                        $rootScope.isSessionActive = true;
                        $location.path('/home');
                    }
                } else {
                    $rootScope.isSessionActive = false;
                }
            });

        }

    }
]
        );


