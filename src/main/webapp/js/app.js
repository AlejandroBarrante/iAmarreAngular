/*
 * Copyright (c) 2015 by Rafael Angel Aznar Aparici (rafaaznar at gmail dot com)
 * 
 * openAUSIAS: The stunning micro-library that helps you to develop easily 
 *             AJAX web applications by using Java and jQuery
 * openAUSIAS is distributed under the MIT License (MIT)
 * Sources at https://github.com/rafaelaznar/openAUSIAS
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
 */

'use strict';

//var appName = 'AjaxStockNg';

var openAusias = angular.module('myApp', [
    'ngRoute',
    'Filters',
    'Services',
    'Directives',
    'systemControllers',
    'usuarioControllers',
    'tipousuarioControllers',
    'juegoControllers',
    'autorControllers',
    'autorJuegoControllers',
    'editorialControllers',
    'ilustradorControllers',
    'ilustradorJuegoControllers',
    'categoriaControllers',
    'depLenguajeControllers',
    'categoriaJuegoControllers',
    'editorialJuegoControllers',
    'totalJuegoControllers',
    'coleccionControllers',
    'menuControllers',
    'sessionControllers',
    'ui.bootstrap',
    'ngSanitize'
]);

openAusias.config(['$routeProvider', function ($routeProvider) {

        $routeProvider.when('/', {templateUrl: 'js/system/home.html', controller: 'HomeController'});
        //------------
        $routeProvider.when('/home', {templateUrl: 'js/system/home.html', controller: 'HomeController'});
        $routeProvider.when('/license', {templateUrl: 'js/system/license.html', controller: 'LicenseController'});
        //------------
        $routeProvider.when('/usuario/edit/:id', {templateUrl: 'js/usuario/edit.html', controller: 'UsuarioEditController'});
        $routeProvider.when('/usuario/new/:id?', {templateUrl: 'js/usuario/new.html', controller: 'UsuarioNewController'});
        $routeProvider.when('/usuario/plist/:page?/:rpp?', {templateUrl: 'js/usuario/plist.html', controller: 'UsuarioPListController'});
        $routeProvider.when('/usuario/remove/:id', {templateUrl: 'js/usuario/remove.html', controller: 'UsuarioRemoveController'});
        $routeProvider.when('/usuario/selection/:page?/:rpp?', {templateUrl: 'js/tipousuario/selection.html', controller: 'UsuarioSelectionController'});
        $routeProvider.when('/usuario/view/:id', {templateUrl: 'js/usuario/view.html', controller: 'UsuarioViewController'});
        //------------
        $routeProvider.when('/tipousuario/selection/:page/:rpp', {templateUrl: 'js/tipousuario/selection.html', controller: 'TipousuarioSelectionController'});
        $routeProvider.when('/tipousuario/view/:id', {templateUrl: 'js/tipousuario/view.html', controller: 'TipousuarioViewController'});
        //------------
        $routeProvider.when('/juego/edit/:id', {templateUrl: 'js/juego/edit.html', controller: 'JuegoEditController'});
        $routeProvider.when('/juego/new/:filename?', {templateUrl: 'js/juego/new.html', controller: 'JuegoNewController'});
        $routeProvider.when('/juego/plist/:page?/:rpp?', {templateUrl: 'js/juego/plist.html', controller: 'JuegoPListController'});
        $routeProvider.when('/juego/remove/:id', {templateUrl: 'js/juego/remove.html', controller: 'JuegoRemoveController'});
        //------------
        $routeProvider.when('/autor/edit/:id', {templateUrl: 'js/autor/edit.html', controller: 'AutorEditController'});
        $routeProvider.when('/autor/new', {templateUrl: 'js/autor/new.html', controller: 'AutorNewController'});
        $routeProvider.when('/autor/plist/:page?/:rpp?', {templateUrl: 'js/autor/plist.html', controller: 'AutorPListController'});
        $routeProvider.when('/autor/remove/:id', {templateUrl: 'js/autor/remove.html', controller: 'AutorRemoveController'});
        $routeProvider.when('/autor/view/:id', {templateUrl: 'js/autor/view.html', controller: 'AutorViewController'});
        //------------
        $routeProvider.when('/ilustrador/edit/:id', {templateUrl: 'js/ilustrador/edit.html', controller: 'IlustradorEditController'});
        $routeProvider.when('/ilustrador/new', {templateUrl: 'js/ilustrador/new.html', controller: 'IlustradorNewController'});
        $routeProvider.when('/ilustrador/plist/:page?/:rpp?', {templateUrl: 'js/ilustrador/plist.html', controller: 'IlustradorPListController'});
        $routeProvider.when('/ilustrador/remove/:id', {templateUrl: 'js/ilustrador/remove.html', controller: 'IlustradorRemoveController'});
        $routeProvider.when('/ilustrador/view/:id', {templateUrl: 'js/ilustrador/view.html', controller: 'IlustradorViewController'});

        //------------
        $routeProvider.when('/categoria/edit/:id', {templateUrl: 'js/categoria/edit.html', controller: 'CategoriaEditController'});
        $routeProvider.when('/categoria/new', {templateUrl: 'js/categoria/new.html', controller: 'CategoriaNewController'});
        $routeProvider.when('/categoria/plist/:page?/:rpp?', {templateUrl: 'js/categoria/plist.html', controller: 'CategoriaPListController'});
        $routeProvider.when('/categoria/remove/:id', {templateUrl: 'js/categoria/remove.html', controller: 'CategoriaRemoveController'});
        $routeProvider.when('/categoria/view/:id', {templateUrl: 'js/categoria/view.html', controller: 'CategoriaViewController'});

        //------------
        $routeProvider.when('/editorial/edit/:id', {templateUrl: 'js/editorial/edit.html', controller: 'EditorialEditController'});
        $routeProvider.when('/editorial/new', {templateUrl: 'js/editorial/new.html', controller: 'EditorialNewController'});
        $routeProvider.when('/editorial/plist/:page?/:rpp?', {templateUrl: 'js/editorial/plist.html', controller: 'EditorialPListController'});
        $routeProvider.when('/editorial/remove/:id', {templateUrl: 'js/editorial/remove.html', controller: 'EditorialRemoveController'});
        $routeProvider.when('/editorial/selection/:page/:rpp', {templateUrl: 'js/editorial/selection.html', controller: 'EditorialSelectionController'});
        $routeProvider.when('/editorial/view/:id', {templateUrl: 'js/editorial/view.html', controller: 'EditorialViewController'});

        //------------
        $routeProvider.when('/deplenguaje/selection/:page/:rpp', {templateUrl: 'js/deplenguaje/selection.html', controller: 'DepLenguajeSelectionController'});
        //------------
        $routeProvider.when('/coleccion/plist/:page?/:rpp?/:id_usuario?', {templateUrl: 'js/coleccion/plist.html', controller: 'ColeccionPListController'});
        //------------
        $routeProvider.when('/autorJuego/plist/:page?/:rpp?/:id_autor?', {templateUrl: 'js/autorJuego/plist.html', controller: 'AutorJuegoPListController'});
        $routeProvider.when('/categoriaJuego/plist/:page?/:rpp?/:id_categoria?', {templateUrl: 'js/categoriaJuego/plist.html', controller: 'CategoriaJuegoPListController'});
        $routeProvider.when('/editorialJuego/plist/:page?/:rpp?/:id_editorial?', {templateUrl: 'js/editorialJuego/plist.html', controller: 'EditorialJuegoPListController'});
        $routeProvider.when('/ilustradorJuego/plist/:page?/:rpp?/:id_ilustrador?', {templateUrl: 'js/ilustradorJuego/plist.html', controller: 'IlustradorJuegoPListController'});
        //------------
        $routeProvider.when('/juegoIlustrador/plist/:page?/:rpp?/:id_juego?', {templateUrl: 'js/juegoIlustrador/plist.html', controller: 'JuegoIlustradorPListController'});
        $routeProvider.when('/juegoIlustrador/selection/:page/:rpp/:id_juego?', {templateUrl: 'js/juegoIlustrador/selection.html', controller: 'JuegoIlustradorSelectionController'});
        //------------
        $routeProvider.when('/juegoCategoria/plist/:page?/:rpp?/:id_juego?', {templateUrl: 'js/juegoCategoria/plist.html', controller: 'JuegoCategoriaPListController'});
        $routeProvider.when('/juegoCategoria/selection/:page/:rpp/:id_juego?', {templateUrl: 'js/juegoCategoria/selection.html', controller: 'JuegoCategoriaSelectionController'});
        //------------
        $routeProvider.when('/juegoAutor/plist/:page?/:rpp?/:id_juego?', {templateUrl: 'js/juegoAutor/plist.html', controller: 'JuegoAutorPListController'});
        $routeProvider.when('/juegoAutor/selection/:page/:rpp/:id_juego?', {templateUrl: 'js/juegoAutor/selection.html', controller: 'JuegoAutorSelectionController'});
        //------------
        $routeProvider.when('/totalJuego/view/:id', {templateUrl: 'js/totalJuego/view.html', controller: 'TotalJuegoViewController'});
        $routeProvider.when('/totalJuego/remove/:id', {templateUrl: 'js/totalJuego/remove.html', controller: 'TotalJuegoRemoveController'});
        //------------
        $routeProvider.otherwise({redirectTo: '/'});


    }]);

var moduloSistema = angular.module('systemControllers', []);
var moduloUsuario = angular.module('usuarioControllers', []);
var moduloTipousuario = angular.module('tipousuarioControllers', []);
var moduloJuego = angular.module('juegoControllers', []);
var moduloAutor = angular.module('autorControllers', []);
var moduloEditorial = angular.module('editorialControllers', []);
var moduloIlustrador = angular.module('ilustradorControllers', []);
var moduloCategoria = angular.module('categoriaControllers', []);
var moduloAutorJuego = angular.module('autorJuegoControllers', []);
var moduloIlustradorJuego = angular.module('ilustradorJuegoControllers', []);
var moduloCategoriaJuego = angular.module('categoriaJuegoControllers', []);
var moduloEditorialJuego = angular.module('editorialJuegoControllers', []);
var moduloDepLenguaje = angular.module('depLenguajeControllers', []);
var moduloTotalJuego = angular.module('totalJuegoControllers', []);
var moduloColeccion = angular.module('coleccionControllers', []);
var moduloSession = angular.module('sessionControllers', []);
var moduloMenu = angular.module('menuControllers', []);

