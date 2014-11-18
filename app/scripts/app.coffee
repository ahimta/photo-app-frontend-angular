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
    'ngTouch'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'

