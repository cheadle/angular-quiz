'use strict'

angular.module 'quizApp'
.controller 'QuizCtrl', ($scope, quiz) ->

  $scope.questions = quiz.questions()

  $scope.quiz = q =
    index: 0
    question: $scope.questions[0]
    answer: null
    complete: false
    total: 0

  $scope.setAnswer = ->
    if q.answer == q.question.answer
      q.question.correct = true
      q.total++
    else
      q.question.correct = false
      q.question.wrongAnswer = q.question.options[q.answer]

    q.answer = null

    if q.index >= $scope.questions.length - 1
      q.complete = true
    else
      q.question = $scope.questions[q.index + 1]
      q.index++
