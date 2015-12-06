pos.controller('ItemGroupController',function($scope, $filter, masterService,alertService, localeService){
	$scope.isEdit = false;
	$scope.editingRow;
			$scope.listItemGroup = function(){
					masterService.listItemGroup().then(function(resultData) {
				
					$scope.itemGroupList = resultData.data;
					$scope.displayitemGroup = [].concat($scope.itemGroupList);
					$scope.predicates = [ 'grpCode', 'grpName' ];
				});
			}
			$scope.listItemGroup();//on load
	
			
			$scope.deleteItemGroup = function(row) {
				masterService.deleteItemGroup(row).then(
						function(resultData) {
							alertService.triggerMessage(localeService.alert.success);
							//TODO exception handling
							$scope.listItemGroup();//should call entire list again ??
						});

			}

			$scope.saveItemGroup = function(row) {
				
				if($scope.isEdit == true){
					masterService.updateItemGroup(row).then(function(resultData) {
						//TODO exception handling
						alertService.triggerMessage(resultData.data);
						$scope.listItemGroup();//should call entire list again ??
						$scope.isEdit = false;
					});
				}else{
					masterService.saveItemGroup(row).then(function(resultData) {
						alertService.triggerMessage(resultData.data);
						$scope.listItemGroup();//should call entire list again ??
					});
				}
			}

			$scope.editItemGroup = function(row) {
				
				$scope.isEdit = true;
				$scope.newEntry = angular.copy(row);

			}

			/*$scope.listCompany = function() {
				$scope.isEdit = false;
				alertService.triggerMessage(localeService.alert.success);
				$scope.newEntry ={};
				//alert("Cleared");
			}*/


});