@ItemCtrl = ($scope) ->
  # Item = $resource("/items/:id", {id: "@id"}, {update: {method: "PUT"}})
  # $scope.item = Item.query()
  $scope.items = [
    {description: "Larry"}
  ]

  $scope.addItem = ->
    $scope.items.push($scope.newItem)
    $scope.newItem = {}
