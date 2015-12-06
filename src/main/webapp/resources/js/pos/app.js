'use strict';


var pos = angular.module('pos', ['ngRoute','smart-table','ngSanitize', 'ui.select','flash', 'ngAnimate']);

pos.config(['$routeProvider', function ($routeProvider) {
    $routeProvider.when('/accountGroups', {
        templateUrl: 'resources/views/pages/accGroups.jsp'
    });
    
    $routeProvider.when('/accountSubGroups', {
        templateUrl: 'resources/views/pages/accSubGroups.jsp'
    });
    
    $routeProvider.when('/accountHead', {
        templateUrl: 'resources/views/pages/accHead.jsp'
    });
    
    $routeProvider.when('/company', {
        templateUrl: 'resources/views/pages/company.jsp'
    });
    
    $routeProvider.when('/itemGroup', {
        templateUrl: 'resources/views/pages/itemGroup.jsp'
    });
    
    $routeProvider.when('/itemSubGroup', {
        templateUrl: 'resources/views/pages/itemSubGroup.jsp'
    });
    
    $routeProvider.when('/itemMaster', {
        templateUrl: 'resources/views/pages/itemMaster.jsp'
    });
    $routeProvider.when('/unitMaster', {
        templateUrl: 'resources/views/pages/unitMaster.jsp'
    });
    $routeProvider.when('/priceEnquiry', {
        templateUrl: 'resources/views/pages/priceEnquiry.jsp'
    });
    $routeProvider.when('/made', {
        templateUrl: 'resources/views/pages/made.jsp'
    });
    $routeProvider.when('/purchaseOrder', {
        templateUrl: 'resources/views/pages/purchaseOrder.jsp'
    });
    $routeProvider.when('/purchaseReceiving', {
        templateUrl: 'resources/views/pages/purchaseReceiving.jsp'
    });
    $routeProvider.when('/sales', {
        templateUrl: 'resources/views/pages/sales.jsp'
    });
    $routeProvider.when('/salesReturn', {
        templateUrl: 'resources/views/pages/salesReturn.jsp'
    });
    $routeProvider.when('/purchaseReturn', {
        templateUrl: 'resources/views/pages/purchaseReturn.jsp'
    });
    $routeProvider.when('/damagedStock', {
        templateUrl: 'resources/views/pages/damagedStock.jsp'
    });
    $routeProvider.when('/openingStock', {
        templateUrl: 'resources/views/pages/openingStock.jsp'
    });
    
    
  
    
    $routeProvider.otherwise({redirectTo: '/accountGroups'});
}]);


/**
 * AngularJS default filter with the following expression:
 * "person in people | filter: {name: $select.search, age: $select.search}"
 * performs a AND between 'name: $select.search' and 'age: $select.search'.
 * We want to perform a OR.
 */
pos.filter('propsFilter', function() {
  return function(items, props) {
    var out = [];

    if (angular.isArray(items)) {
      items.forEach(function(item) {
        var itemMatches = false;

        var keys = Object.keys(props);
        for (var i = 0; i < keys.length; i++) {
          var prop = keys[i];
          var text = props[prop].toLowerCase();
          if (item[prop].toString().toLowerCase().indexOf(text) !== -1) {
            itemMatches = true;
            break;
          }
        }

        if (itemMatches) {
          out.push(item);
        }
      });
    } else {
      // Let the output be the input untouched
      out = items;
    }

    return out;
  }
});