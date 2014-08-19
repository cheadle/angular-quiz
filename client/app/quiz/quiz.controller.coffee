'use strict'

angular.module 'quizApp'
.controller 'QuizCtrl', ($scope, quiz) ->

  $scope.questions = quiz.questions()

  $scope.quiz = quiz =
    index: 0
    question: $scope.questions[0]
    answer: null
    complete: false
    total: 0

  $scope.setAnswer = ->
    if quiz.answer == quiz.question.answer
      quiz.question.correct = true
      quiz.total++
    else
      quiz.question.correct = false
      quiz.question.wrongAnswer = quiz.question.options[quiz.answer]

    quiz.answer = null

    if quiz.index >= $scope.questions.length - 1
      quiz.complete = true
    else
      quiz.question = $scope.questions[quiz.index + 1]
      quiz.index++
