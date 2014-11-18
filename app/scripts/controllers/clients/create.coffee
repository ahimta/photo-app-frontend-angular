'use strict'

###*
 # @ngdoc function
 # @name photoAppFrontendAngularApp.controller:ClientsCreateCtrl
 # @description
 # # ClientsCreateCtrl
 # Controller of the photoAppFrontendAngularApp
###
angular.module('photoAppFrontendAngularApp')
  .controller 'ClientsCreateCtrl', ($scope, $log, $http, $location, FileUploader, BACKENDURL) ->

    resource = "#{BACKENDURL}/clients"

    uploader = $scope.uploader = new FileUploader
      withCredentials: true
      queueLimit: 1
      method: 'PUT'

    uploader.onCompleteAll = ->
      $location.path('/')

    $scope.create = (client) ->
      $http.post(resource, client)
        .then (res) ->
          $scope.isUploading = true
          newClient = res.data
          uploader.onBeforeUploadItem = (item) ->
            item.url = "#{resource}/#{newClient.id}/photos?token=#{newClient.token}"
          res
        .then (res) ->
          if uploader.queue and uploader.queue.length == 0
            $location.path('/')
          else
            uploader.uploadAll()
        .then null, (res) ->
          if res.status == 400
            $scope.errors = res.data
            
          
