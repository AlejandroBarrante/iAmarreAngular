/* 
 * Copyright (c) 2015 by Rafael Angel Aznar Aparici (rafaaznar at gmail dot com)
 * 
 * openAUSIAS: The stunning micro-library that helps you to develop easily 
 *             AJAX web applications by using Java and jQuery
 * openAUSIAS is distributed under the MIT License (MIT)
 * Sources at https://github.com/rafaelaznar/
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 * 
 */

'use strict';
moduloJuego.controller('JuegoEditController', ['$scope', '$routeParams', '$location', 'serverService', 'sharedSpaceService', 'sharedSpaceJuego', '$rootScope',
    function ($scope, $routeParams, $location, serverService, sharedSpaceService, sharedSpaceJuego, $rootScope) {
        $scope.obj = null;
        $scope.id = $routeParams.id;
        $scope.ob = 'juego';
        $scope.op = "edit";
        $scope.obTotal = "totalJuego";
        $scope.objTotal = null;
        $scope.result = null;
        $scope.title = "Edición de Juego";
        $scope.icon = "/images/J.png";
        if (sharedSpaceService.getFase() == 0) {
            serverService.getDataFromPromise(serverService.promise_getOne($scope.ob, $scope.id)).then(function (data) {
                $scope.obj = data.message;
            });

            serverService.getDataFromPromise(serverService.promise_getTotalJuego($scope.obTotal, $scope.id)).then(function (data) {
                $scope.objTotal = data.message;
            });
        } else {
            $scope.obj = sharedSpaceService.getObject();
            sharedSpaceService.setFase(0);
        }

        $scope.save = function () {
            console.log("save");
            console.log({json: JSON.stringify(serverService.array_identificarArray($scope.obj))});
            //strValues = serverService.array_identificarArray(thisObject.form_getFormValues(strClass));
            serverService.getDataFromPromise(serverService.promise_setOne($scope.ob, {json: JSON.stringify(serverService.array_identificarArray($scope.obj))})).then(function (data) {
                $scope.result = data;

            });
        };

        $scope.$watch('obj.obj_editorial.id', function () {
            if ($scope.obj) {
                serverService.getDataFromPromise(serverService.promise_getOne('editorial', $scope.obj.obj_editorial.id)).then(function (data2) {
                    $scope.obj.obj_editorial = data2.message;
                });
            }
        });



        $scope.$watch('obj.obj_dependencialenguaje.id', function () {
            if ($scope.obj) {
                serverService.getDataFromPromise(serverService.promise_getOne('dependenciaLenguaje', $scope.obj.obj_dependencialenguaje.id)).then(function (data2) {
                    $scope.obj.obj_dependencialenguaje = data2.message;
                });
            }
        });


        $scope.back = function () {
            window.history.back();
        };
        $scope.close = function () {
            $location.path('/index.html');
        };
        $scope.plist = function () {
            $location.path('/' + $scope.ob + '/plist/1/50');
        };

        $scope.chooseOne = function (foreignObjectName) {


            sharedSpaceJuego.setReturnLink('juego/edit/' + $scope.id);
            sharedSpaceJuego.set_idJuego($scope.id);
            sharedSpaceJuego.setFase(1);
            $location.path('/' + foreignObjectName + '/selection/1/100/' + $scope.id);
        };

        $scope.chooseOne2 = function (foreignObjectName) {

            sharedSpaceService.setReturnLink('juego/edit/' + $scope.id);
            sharedSpaceService.setObject($scope.obj);
            sharedSpaceService.setFase(1);
            $location.path('/' + foreignObjectName + '/selection/1/100');
        }


        serverService.getDataFromPromise(serverService.promise_getUserSession("usuario")).then(function (data) {
            $scope.bean2 = data.message;
        });

        $scope.registro = function () {

            $('#botreg').attr("href", "#/totalJuego/view/" + $scope.id);
            $('#myModal').modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();

        };

        $scope.close = function () {
            $location.path('/index.html');
            $('#myModal').modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
        };

    }]);