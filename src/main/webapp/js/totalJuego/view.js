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





moduloTotalJuego.controller('TotalJuegoViewController', ['$scope', '$routeParams', '$location', 'serverService', 'sharedSpaceJuego', '$rootScope',
    function ($scope, $routeParams, $location, serverService, sharedSpaceJuego, $rootScope) {
        $scope.title = "Vista de Juego";
        $scope.icon = "/images/J.png";
        $scope.ob = 'totalJuego';
        $scope.ob2 = "usuario";
        $scope.id = $routeParams.id;
        serverService.getDataFromPromise(serverService.promise_getTotalJuego($scope.ob, $scope.id)).then(function (data) {
            $scope.bean = data.message;
        });
        serverService.getDataFromPromise(serverService.promise_getUserSession("usuario")).then(function (data) {
            $scope.bean2 = data.message;
        });

        $scope.coleccion = function () {

            $('#botcol').attr("href", "#/coleccion/plist/1/50/" + $scope.bean2.id);
            $('#myModal').modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();

        };

        $scope.back = function () {
            window.history.back();
        };
        $scope.añadir = function (num) {

            sharedSpaceJuego.setReturnLink('totalJuego/view/' + $scope.id);
            var coleccion = new Object();
            coleccion.id = 0;
            coleccion.id_juego = num;
            serverService.getDataFromPromise(serverService.promise_setOneColeccion(num).then(function (data) {
                $scope.result = data;
                if (data.data.message >= 0) {
                    $scope.mensaje = 'El juego ha sido añadido a tu colección.';
                } else {
                    $scope.mensaje = 'El juego ya estaba en tu colección.';
                }
                $location.path(sharedSpaceJuego.getReturnLink());
            }));
        };

        $scope.eliminar = function (num) {

            sharedSpaceJuego.setReturnLink('totalJuego/view/' + $scope.id);
            var coleccion = new Object();
            coleccion.id = 0;
            coleccion.id_juego = num;
            serverService.getDataFromPromise(serverService.promise_removeOneColeccion(num).then(function (data) {
                $scope.result = data;
                if (data.data.message >= 1) {
                    $scope.mensaje = 'El juego ha sido eliminado de tu colección.';
                } else {
                    $scope.mensaje = 'El juego no estaba en tu colección.';
                }
                $location.path(sharedSpaceJuego.getReturnLink());


            }));
        };




    }]);