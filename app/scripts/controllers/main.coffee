'use strict'

###*
 # @ngdoc function
 # @name photoAppFrontendAngularApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the photoAppFrontendAngularApp
###
angular.module('photoAppFrontendAngularApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
