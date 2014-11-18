'use strict'

describe 'Controller: ClientsCreateCtrl', ->

  # load the controller's module
  beforeEach module 'photoAppFrontendAngularApp'

  ClientsCreateCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ClientsCreateCtrl = $controller 'ClientsCreateCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings).toBe undefined
