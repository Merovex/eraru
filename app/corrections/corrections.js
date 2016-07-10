'use strict';

angular.module('korektuApp.correction', ['ngRoute'])

.controller('correction.index.controller', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams) {
	getTitle($scope);
}])
.controller('correction.show.controller', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams) {
        // $scope.correctionId = $routeParams.correctionId;
        // $scope.correction = {
        // 	'titieId' : $scope.correctionId,
        // 	'correction' : 'Bellicose'
        // }
        // // your code here.
}])
.controller('correction.new.controller', [function() {

}])
.controller('correction.edit.controller', [function() {

}]);

