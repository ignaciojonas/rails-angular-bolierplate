'use strict';

angular.module('notesApp').config(function ($stateProvider) {
  $stateProvider
    .state('root', {
      url: '/',
      templateUrl: 'main.html',
      controller: 'MainCtrl'
    })
    .state('notes', {
        url: '/notes',
        templateUrl: 'notes.html',
        controller: 'NotesCtrl'
    })
});
