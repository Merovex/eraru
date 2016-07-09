'use strict';

describe('korektuApp.version module', function() {
  beforeEach(module('korektuApp.version'));

  describe('version service', function() {
    it('should return current version', inject(function(version) {
      expect(version).toEqual('0.1');
    }));
  });
});
