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
moduloUsuario.controller('UsuarioEditController', ['$scope', '$routeParams', '$location', 'serverService', 'sharedSpaceService', '$filter', '$rootScope',
    function ($scope, $routeParams, $location, serverService, sharedSpaceService, $filter, $rootScope) {
        $scope.obj = null;
        $scope.id = $routeParams.id;
        $scope.ob = 'usuario';
        $scope.op = 'edit';
        $scope.result = null;
        $scope.title = "Edición de usuario";
        $scope.icon = "/images/U.png";
        if (sharedSpaceService.getFase() == 0) {
            serverService.getDataFromPromise(serverService.promise_getOne($scope.ob, $scope.id)).then(function (data) {
                $scope.obj = data.message;
            });
        } else {
            $scope.obj = sharedSpaceService.getObject();
            sharedSpaceService.setFase(0);
        }

        $scope.save = function () {
            serverService.getDataFromPromise(serverService.promise_setOne($scope.ob, {json: JSON.stringify(serverService.array_identificarArray($scope.obj))})).then(function (data) {
                $scope.result = data;
            });
        };

        $scope.back = function () {
            window.history.back();
        };
        $scope.volver = function () {
            $location.path('/usuario/plist/1/50');
        };
        $scope.close = function () {
            $location.path('/home');
        };
        $scope.plist = function () {
            $location.path('/usuario/plist/1/50');
        };


        $scope.registro = function () {

            $('#botreg').attr("href", "#/usuario/view/" + $scope.id);
            $('#myModal').modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();

        };

        $scope.cerrar = function () {
            $location.path('/index.html');
            $('#myModal').modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
        };



    }]);