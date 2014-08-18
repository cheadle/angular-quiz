'use strict'

angular.module 'quizApp'
.factory 'quiz', ->

  # Service logic
  questions = [
    {
      text: 'Which is not an advantage of using a closure?'
      answer: 2
      options: [
        'Prevent pollution of global scope'
        'Encapsulation'
        'Private properties and methods'
        'Allow conditional use of strict mode'
      ]
    }
    {
      text: 'To create a columned list of two-line email subjects and dates for a master- detail view, which are the most semantically correct?'
      answer: 2
      options: [
        '<div> + <span>'
        '<tr> + <td>'
        '<ul> + <li>'
        '<p> + <br>'
      ]
    }
    {
      text: 'To pass an array of strings to a function, do not use...'
      answer: 2
      options: [
        'fn.apply(this, stringsArray)'
        'fn.call(this, stringsArray)'
        'fn.bind(this, stringsArray)'
      ]
    }
    {
      text: '____ and ____ would be the HTML tags you would use to display a menu item and its description.'
      answer: 0
      options: [
        '<li> + <a>'
        '<div> + <span>'
        '<menu> + <item>'
      ]
    }
    {
      text: 'Given this code, which of these two is the most performant way to select the inner div?'
      code: [
        '<div id=”outer”>'
        '  <div class=”inner”></div>'
        '</div>'
      ]
      answer: 0
      options: [
        'getElementById("outer").children[0]'
        'getElementsByClassName("inner")[0]'
      ]
    }
    {
      text: 'Given this code. Which message will be returned by injecting this service and executing “myService.getMessage()”'
      code: [
        'angular.module(‘myModule’,[]).service(‘myService’,(function() {'
        '  var message = “Message one!”'
        '  var getMessage = function() {'
        '    return this.message'
        '  }'
        '  this.message = “Message two!”'
        '  this.getMessage = function() { return message }'
        '  return function() {'
        '    return {'
        '      getMessage: getMessage,'
        '      message: “Message three!”'
        '    }'
        '  }'
        '})())'
      ]
      answer: 2
      options: [
        'Message one!'
        'Message two!'
        'Message three!'
      ]
    }
  ]

  # Public API here
  questions: ->
    questions
