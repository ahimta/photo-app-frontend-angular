'use strict'

###*
 # @ngdoc function
 # @name photoAppFrontendAngularApp.controller:ClientsIndexCtrl
 # @description
 # # ClientsIndexCtrl
 # Controller of the photoAppFrontendAngularApp
###
angular.module('photoAppFrontendAngularApp')
  .controller 'ClientsIndexCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
