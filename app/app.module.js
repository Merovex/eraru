'use strict';

// Declare app level module which depends on views, and components
angular.module('korektuApp', [
  'ngRoute',
  'ngResource',
  'korektuApp.view1',
  'korektuApp.view2',
  'korektuApp.title',
  'korektuApp.correction',
  'korektuApp.version'
])

// website.config(['$locationProvider', '$routeProvider', 
// 	function($locationProvider, $routeProvider) {
// 	  $locationProvider.hashPrefix('!');
// 	  $routeProvider.otherwise({redirectTo: '/view1'});
// 	}
// ]);
 