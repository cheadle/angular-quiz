'use strict'

describe 'Service: quiz', ->

  # load the service's module
  beforeEach module 'quizApp'

  # instantiate service
  quiz = undefined
  beforeEach inject (_quiz_) ->
    quiz = _quiz_

  it 'should do something', ->
    expect(!!quiz).toBe true