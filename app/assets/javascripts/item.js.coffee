app = angular.module("GratefulBecause", ["ngResource"])

app.factory "Item", ["$resource", ($resource) ->
  $resource("/items/:id", {id: "@id"}, {update: {method: "PUT"}})
]

@ItemCtrl = ($scope, Item) ->
  $scope.items = Item.query()

  $scope.addItem = ->
    item = Item.save($scope.newItem)
    $scope.items.push(item)
    $scope.newItem = {}
