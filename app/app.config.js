angular.
	module('korektuApp').
	config(function($routeProvider, $locationProvider){
		$locationProvider.hashPrefix('!');
		$routeProvider
			.otherwise({redirectTo : '/view1', template:'/view1.html'})
	})