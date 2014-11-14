'use strict';

packlightApp
    .config(function ($routeProvider, $httpProvider, $translateProvider, USER_ROLES) {
            $routeProvider
                .when('/hike', {
                    templateUrl: 'views/hikes.html',
                    controller: 'HikeController',
                    resolve:{
                        resolvedHike: ['Hike', function (Hike) {
                            return Hike.query();
                        }]
                    },
                    access: {
                        authorizedRoles: [USER_ROLES.all]
                    }
                })
        });
