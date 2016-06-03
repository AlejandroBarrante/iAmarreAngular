openAusias.controller('HeaderController', ['$scope', '$location', 'serverService', '$rootScope',
    function ($scope, $location, serverService, $rootScope) {
        $scope.username = "";
        $scope.isActive = function (viewLocation) {
            return viewLocation === $location.path();
        };
        $scope.isSessionActive = function () {
            return $rootScope.isSessionActive;
        };
    }]);