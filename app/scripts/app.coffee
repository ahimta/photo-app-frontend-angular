'use strict'

###*
 # @ngdoc overview
 # @name photoAppFrontendAngularApp
 # @description
 # # photoAppFrontendAngularApp
 #
 # Main module of the application.
###
angular
  .module('photoAppFrontendAngularApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'angularFileUpload'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        redirectTo: '/clients'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/clients',
        templateUrl: 'views/clients/index.html'
        controller: 'ClientsIndexCtrl'
      .when '/clients/new',
        templateUrl: 'views/clients/create.html'
        controller: 'ClientsCreateCtrl'
      .otherwise
        redirectTo: '/clients'

