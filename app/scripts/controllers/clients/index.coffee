'use strict'

###*
 # @ngdoc function
 # @name photoAppFrontendAngularApp.controller:ClientsIndexCtrl
 # @description
 # # ClientsIndexCtrl
 # Controller of the photoAppFrontendAngularApp
###
angular.module('photoAppFrontendAngularApp')
  .controller 'ClientsIndexCtrl', ($scope, $log, $http, $routeParams, BACKENDURL) ->

    resource = "#{BACKENDURL}/clients"
    ownerId  = $routeParams.client_id
    token    = $routeParams.token

    invalidate = ->
      $http.get(resource)
        .then (res) ->
          $scope.clients = res.data.map (client) ->
            client.photo = client.files[0]
            client

    $scope.pictureUrl = (client) ->
      "#{resource}/#{client.id}/photos/#{client.photo}"

    $scope.unauthorized = (client) ->
      ownerId != client.id

    $scope.destroy = (client) ->
      $http.delete("#{resource}/#{client.id}?token=#{token}")
        .then invalidate, invalidate

    invalidate()
