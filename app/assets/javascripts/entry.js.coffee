@EntryCtrl = ($scope) ->
  $scope.entries = [
    {description: "Monday"},
    {description: "Tuesday"},
    {description: "Wednesday"}
  ]

  $scope.addEntry = ->
    $scope.entries.push($scope.newEntry)
    $scope.newEntry = {}

