'use strict'

describe 'Controller: ClientsIndexCtrl', ->

  # load the controller's module
  beforeEach module 'photoAppFrontendAngularApp'

  ClientsIndexCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ClientsIndexCtrl = $controller 'ClientsIndexCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
