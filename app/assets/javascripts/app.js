notesApp = angular.module('notesApp',['ui.router','templates'])
  .config(function ($locationProvider) {
  $locationProvider.html5Mode(true);
  })
