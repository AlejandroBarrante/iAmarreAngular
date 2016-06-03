'use strict';
        moduloSistema.controller('LogoutController', ['$scope', '$routeParams', '$location', 'serverService', 'sessionService', '$rootScope',
                function ($scope, $routeParams, $location, serverService, sessionService, $rootScope) {

                $scope.title = "Bye";
                        $scope.icon = "fa-file-text-o";
                        serverService.getDataFromPromise(serverService.getLogoutPromise()).then(function (result) {

                if (result) {
                if (result.status == 200) {
                $rootScope.isSessionActive = false;
                        //$location.path('home');
                }
                } else {
                sessionService.setSessionInactive();
                        sessionService.setUsername('');
                        //$rootScope.username = "";
                        //$rootScope.authenticated = false;
                }
                });
                }
        ]
                );


