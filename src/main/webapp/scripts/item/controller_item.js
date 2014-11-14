'use strict';

packlightApp.controller('ItemController', function ($scope, resolvedItem, Item, $log, $routeParams, $rootScope, $http, Hike) {

        //$scope.items = resolvedItem;
        $scope.hikeId = $routeParams.hikeId;
        $scope.items = [];
        
        
        for (var i=0 ; i<$rootScope.hikes.length; i++){
            if ($rootScope.hikes[i].id == $scope.hikeId){
                $scope.hike = $rootScope.hikes[i];
            }
        };

        for (var i=0 ; i<$scope.hike.itemHikes.length; i++){
            if ($scope.hike.itemHikes[i].item != null)
                $scope.items.push($scope.hike.itemHikes[i].item);
        };


        $scope.create = function () {
            Item.save($scope.item,
                function () {
                    $scope.items = Item.query();
                    $('#saveItemModal').modal('hide');
                    $scope.clear();
                });
        };

        $scope.update = function (id) {
            $scope.item = Item.get({id: id});
            $('#saveItemModal').modal('show');
        };

        $scope.delete = function (item) {
            for (var i=0 ; i<$scope.hike.itemHikes.length; i++){
            if (($scope.hike.itemHikes[i].item.id == item.id)
                && ($scope.hike.itemHikes[i].item.hikeId == item.hikeId)
                && ($scope.hike.itemHikes[i].item.categoryId == item.categoryId)){
                    $scope.hike.itemHikes.splice(i,1);
                    Hike.save($scope.hike,
                    function () {
                        $rootScope.hikes = Hike.query();
                        for (var i=0 ; i<$rootScope.hikes.length; i++){
                                    if ($rootScope.hikes[i].id == $scope.hikeId){
                                        $scope.hike = $rootScope.hikes[i];
                                    }
                                };
                    });
                }   
        };


            // var config = {
            //     params: {itemId:item.id; hikeId:item.hikeId}
            // };

            // $http.delete("/rest/items/deleteFromHike/", params: {itemId:item.id; hikeId:item.hikeId})
            // .success(function (data, status, headers, config)
            // {
            //     $log.info("SUCCESS");
            // })
            // .error(function (data, status, headers, config)
            // {
            //     $log.info("ERROR");
            // });

            // Item.delete({id: id},
            //     function () {
            //         $scope.items = Item.query();
            //     });
        };

        $scope.clear = function () {
            $scope.item = {id: null};
        };
    });
