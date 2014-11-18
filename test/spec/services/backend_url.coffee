'use strict'

describe 'Service: BACKENDURL', ->

  # load the service's module
  beforeEach module 'photoAppFrontendAngularApp'

  # instantiate service
  BACKENDURL = {}
  beforeEach inject (_BACKENDURL_) ->
    BACKENDURL = _BACKENDURL_

  it 'should do something', ->
    expect(!!BACKENDURL).toBe true
