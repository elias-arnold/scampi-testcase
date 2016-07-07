'use strict';

var restUrl = "http://myliberouter.org/dyn/";
var serviceName = "TestDemoService";

// Declare app level module which depends on views, and components
var app = angular.module('scampiRestPictureDemo', [
  'ngRoute',
  'myApp.messageFeed',
  'myApp.pictureUpload'
]);

app.config(['$routeProvider', function($routeProvider) {
  $routeProvider.otherwise({redirectTo: '/feed'});
}]);
