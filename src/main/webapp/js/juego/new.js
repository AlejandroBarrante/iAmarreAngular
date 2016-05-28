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
moduloJuego.controller('JuegoNewController', ['$scope', '$routeParams', '$location', 'serverService', 'sharedSpaceService',
    function ($scope, $routeParams, $location, serverService, sharedSpaceService) {
        $scope.id = $routeParams.id;
        $scope.ob = 'juego';
        $scope.op = 'new';
        $scope.result = null;
        $scope.title = "Crear un nuevo Juego";
        $scope.icon = "fa-gamepad";




        $scope.obj = {};
        $scope.obj.obj_editorial = {"id": 0};
        $scope.obj.obj_dependencialenguaje = {"id": 0};


        if (sharedSpaceService.getFase() == 0) {
            if ($routeParams.editorial && $routeParams.editorial > 0) {
                $scope.obj.obj_editorial.id = $routeParams.editorial;
            }
            if ($routeParams.deplenguaje && $routeParams.deplenguaje > 0) {
                $scope.obj.obj_dependencialenguaje.id = $routeParams.deplenguaje;
            }
        } else {
            $scope.obj = sharedSpaceService.getObject();
            sharedSpaceService.setFase(0);
        }


        $scope.chooseOne = function (foreignObjectName) {
            sharedSpaceService.setObject($scope.obj);
            sharedSpaceService.setReturnLink('/' + $scope.ob + '/' + $scope.op);
            sharedSpaceService.setFase(1);
            $location.path('/' + foreignObjectName + '/selection/1/100');
        }

        $scope.save = function () {

            console.log("save");
            console.log({json: JSON.stringify(serverService.array_identificarArray($scope.obj))});

            //INICIO UPLOAD 1

            var form = document.getElementById('uploadForm');
            $("#spinner").append('<img src="img/spinner.gif" style="width:50px"></div>').fadeIn(1000);
            var oformData = new FormData(form);
            oformData.append("id", 4);
            oformData.append("value", "ajax...");
            this.timer = setTimeout(function () {
                $.ajax({
                    url: 'upload',
                    processData: false,
                    contentType: false,
                    enctype: 'multipart/form-data',
                    mimeType: "multipart/form-data",
                    data: oformData,
                    type: 'post',
                    success: function (msg) {
                        msg = JSON.parse(msg);
                        if (msg.status == 200) {
                            $("#spinner").empty();
                            //http://stackoverflow.com/questions/4285042/asychronously-load-images-with-jquery
                            var img = $("<img />").attr('src', msg.message.imglink).attr("width", 100)
                                    .on('load', function () {
                                        if (!this.complete || typeof this.naturalWidth == "undefined" || this.naturalWidth == 0) {
                                            alert('broken image!');
                                        } else {
                                            $("#info").empty().append("<p>Image was sucessfully uploaded:</p>");
                                            $("#info").append(img);
                                            //  $location.path(sharedSpaceService.getReturnLink());
                                        }
                                    });
                        } else {
                            $("#spinner").empty();
                            $("#info").empty().append("<h2>ERROR: " + msg.message + "</h2>");
                        }
                    }
                });
            }, 200);

            //FIN UPLOAD 1

            //INICIO UPLOAD 2

            var form2 = document.getElementById('uploadForm2');
            $("#spinner").append('<img src="img/spinner.gif" style="width:50px"></div>').fadeIn(1000);
            var oformData2 = new FormData(form2);
            oformData2.append("id", 4);
            oformData2.append("value", "ajax...");
            this.timer = setTimeout(function () {
                $.ajax({
                    url: 'upload',
                    processData: false,
                    contentType: false,
                    enctype: 'multipart/form-data',
                    mimeType: "multipart/form-data",
                    data: oformData2,
                    type: 'post',
                    success: function (msg) {
                        msg = JSON.parse(msg);
                        if (msg.status == 200) {
                            $("#spinner").empty();
                            //http://stackoverflow.com/questions/4285042/asychronously-load-images-with-jquery
                            var img = $("<img />").attr('src', msg.message.imglink).attr("width", 100)
                                    .on('load', function () {
                                        if (!this.complete || typeof this.naturalWidth == "undefined" || this.naturalWidth == 0) {
                                            alert('broken image!');
                                        } else {
                                            $("#info").empty().append("<p>Image was sucessfully uploaded:</p>");
                                            $("#info").append(img);
                                        }
                                    });
                        } else {
                            $("#spinner").empty();
                            $("#info").empty().append("<h2>ERROR: " + msg.message + "</h2>");
                        }
                    }
                });
            }, 200);

            $scope.filename = document.getElementById('file').value.toString();

            $scope.filename2 = document.getElementById('file2').value.toString();

            //FIN UPLOAD 2

            serverService.getDataFromPromise(serverService.promise_setImage($scope.ob, $scope.filename, $scope.filename2, {json: JSON.stringify(serverService.array_identificarArray($scope.obj))})).then(function (data) {
                $scope.result = data;
            })

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
            $location.path('/home');
        };
        $scope.plist = function () {
            $location.path('/juego/plist/1/50');
        };

        $scope.view = function () {
            $location.path('/juego/view/');
        };

        serverService.getDataFromPromise(serverService.promise_getUserSession("usuario")).then(function (data) {
            $scope.bean2 = data.message;
        });


    }]);