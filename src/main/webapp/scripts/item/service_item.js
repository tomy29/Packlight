'use strict';

packlightApp.factory('Item', function ($resource) {
        return $resource('app/rest/items/:id', {}, {
            'query': { method: 'GET', isArray: true},
            'get': { method: 'GET'}
        });
    });
