'use strict'

describe 'Controller: QuizCtrl', ->

  # load the controller's module
  beforeEach module 'quizApp'
  QuizCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    QuizCtrl = $controller 'QuizCtrl',
      $scope: scope

  it 'should load the quiz questions', ->
    expect(scope.questions.length).toBe 6

  it 'should record correct answers', ->
    scope.quiz.answer = scope.questions[0].answer
    scope.setAnswer()
    expect(scope.questions[0].correct).toBe true
    expect(scope.quiz.total).toBe 1

  it 'should record wrong answers', ->
    question = scope.questions[0]
    scope.quiz.answer = 0
    scope.setAnswer()
    wrongAnswer = question.options[0]
    expect(question.wrongAnswer).toBe wrongAnswer
    expect(question.correct).toBe false

  it 'should reset after each answer', ->
    scope.quiz.answer = scope.quiz.question.answer
    scope.setAnswer()
    expect(scope.quiz.answer).toBe null

  it 'should mark the quiz compete after last question', ->
    scope.quiz.index = 5
    scope.setAnswer()
    expect(scope.quiz.complete).toBe true

  it 'should load the next question after each answer', ->
    scope.quiz.answer = scope.questions[0].answer
    scope.setAnswer()
    expect(scope.quiz.question).toBe scope.questions[1]
