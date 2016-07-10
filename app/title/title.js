'use strict';



angular.module('korektuApp.title', ['ngRoute'])
  .config(['$routeProvider', function($routeProvider) {

    $routeProvider
    	.when('/titles', {
      	templateUrl: 'title/index.html',
      	controller: 'title.show.controller'
    	})
    	.when('/title/:titleId', {
  	    templateUrl: 'title/title.html',
  	    controller: 'title.index.controller'
  	  });
  }])
  .controller('title.index.controller', [function() {

  }])
  .controller('title.show.controller', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams) {
          getTitle($scope);
          // your code here.
  }])
  .controller('title.new.controller', [function() {

  }])
  .controller('title.edit.controller', [function() {

  }]);

function getTitle($scope,$routeParams) {
  $scope.titleId = $routeParams.titleId;
        $scope.title = {
          'titieId' : $scope.titleId,
          'title' : 'Bellicose'
        }
}