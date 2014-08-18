'use strict'

angular.module 'quizApp'
.config ($routeProvider) ->
  $routeProvider.when '/quiz',
    templateUrl: 'app/quiz/quiz.html'
    controller: 'QuizCtrl'
    authenticate: true
