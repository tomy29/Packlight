'use strict';

packlightApp
    .config(function ($routeProvider, $httpProvider, $translateProvider, USER_ROLES) {
            $routeProvider
                .when('/item', {
                    templateUrl: 'views/items.html/',
                    controller: 'ItemController',
                    resolve:{
                        resolvedItem: ['Item', function (Item) {
                            return Item.query();
                        }]
                    },
                    access: {
                        authorizedRoles: [USER_ROLES.all]
                    }
                })
                .when('/item/:hikeId', 
                {   
                    controller:'ItemController', 
                    templateUrl: 'views/items.html/' ,
                    resolve:{
                        resolvedItem: ['Item', function (Item) {
                            return Item.query();
                        }]
                    },
                    access: {
                        authorizedRoles: [USER_ROLES.all]
                    }
                })
            });
