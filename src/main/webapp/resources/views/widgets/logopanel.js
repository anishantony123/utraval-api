pos.directive('logoPanel', function(localeService) {
    var directive = {};

    directive.restrict = 'E'; /* restrict this directive to elements */
    directive.templateUrl = "resources/views/widgets/html/logoPanel.html";
    directive.link = function($scope, element, attributes) {
       
}

    return directive;
})