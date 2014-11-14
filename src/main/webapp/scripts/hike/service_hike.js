'use strict';

packlightApp.factory('Hike', function ($resource) {
        return $resource('app/rest/hikes/:id', {}, {
            'query': { method: 'GET', isArray: true},
            'get': { method: 'GET'}
        });
    });
