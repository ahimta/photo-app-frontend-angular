'use strict'

###*
 # @ngdoc function
 # @name photoAppFrontendAngularApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the photoAppFrontendAngularApp
###
angular.module('photoAppFrontendAngularApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
