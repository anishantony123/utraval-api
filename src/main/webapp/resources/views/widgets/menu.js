pos.directive('posMenu', function(localeService) {
    var directive = {};

    directive.restrict = 'E'; /* restrict this directive to elements */
    directive.templateUrl = "resources/views/widgets/html/menu.html";
    directive.link = function($scope, element, attributes) {
       $scope.locale = localeService.menu;
      // alert($scope.locale.masters)
}

    return directive;
});