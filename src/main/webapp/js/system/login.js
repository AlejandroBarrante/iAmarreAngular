'use strict';
moduloSistema.controller('LoginController', ['$scope', '$routeParams', '$location', 'serverService','$rootScope',
    function ($scope, $routeParams, $location, serverService,$rootScope) {

        $scope.title = "Formulario de entrada al sistema";
        $scope.icon = "fa-file-text-o";

        $scope.user = {};
        $scope.user.username = 'rafael';
        $scope.user.password = 'rafael';



        $scope.login = function () {

            serverService.getDataFromPromise(serverService.getLoginPromise($scope.user.username, $scope.user.password)).then(function (result) {
                if (result) {
                    if (result.status == 200) {
                        serverService.getDataFromPromise(serverService.promise_getUserSession()).then(function (result2) {
                            if (result2) {
                                $rootScope.userid = result.message.id;
                                $rootScope.tipousuario = result.message.obj_tipousuario.id;
                            }
                        })
                        $rootScope.isSessionActive = true;
                        $location.path('/home');
                    }
                } else {                  
                    $rootScope.isSessionActive = false;          
                }
            });


//            serverService.getDataFromPromise(
//                    serverService.promise_patch('ob=usuario&op=login&user=' + $scope.user.username + '&pass=' + $scope.user.password + '&db=scroom')).then(
//                    function successCallback(response) {
//                        if (response.code == 200) {
//                            sessionService.setObject($scope.user);
//                            alert('ok..');
//                            $("#infoPanel").html($scope.user.username); //poner el nombre del user
//                            //obtener datos del usuario
//                        }
//                        // this callback will be called asynchronously
//                        // when the response is available
//                    }, function errorCallback(response, status) {
//                console.log("HTTP ERROR STATUS: " + $scope.data.error.status);
//                alert('error..');
//            });
        }

    }
]
        );


