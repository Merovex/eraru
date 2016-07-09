'use strict';

angular.module('korektuApp.version', [
  'korektuApp.version.interpolate-filter',
  'korektuApp.version.version-directive'
])

.value('version', '0.1');
