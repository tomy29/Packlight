'use strict';

packlightApp.controller('HikeController', function ($scope, resolvedHike, Hike, $location, $rootScope) {

        $scope.hikes = resolvedHike;
        $rootScope.hikes = $scope.hikes;
        // [
        //     {id:"1", label:"GR10", duration:"40", date:"10/11/2012", weightbag:"4560", weightcarried:"3405" },
        //     {id:"2", label:"GR20", duration:"20", date:"10/11/2012", weightbag:"4560", weightcarried:"3405" },
        //     {id:"3", label:"Tour Mont Blanc", duration:"10", date:"10/11/2012", weightbag:"4560", weightcarried:"3405" }
        // ]


        //resolvedHike;



        $scope.create = function () {
            Hike.save($scope.hike,
                function () {
                    $scope.hikes = Hike.query();
                    $('#saveHikeModal').modal('hide');
                    $scope.clear();
                });
        };

        $scope.update = function (url) {
            $location.url(url); 
            // $scope.hike = Hike.get({id: id});
            // $('#saveHikeModal').modal('show');
        };

        $scope.delete = function (id) {
            Hike.delete({id: id},
                function () {
                    $scope.hikes = Hike.query();
                });
        };

        $scope.clear = function () {
            $scope.hike = {id: null};
        };
    });
