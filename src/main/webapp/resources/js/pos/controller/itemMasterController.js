pos.controller('ItemMasterController',function($scope, $filter, masterService, localeService, alertService){
	$scope.isEdit = false;
	$scope.editingRow;
			$scope.listItemMaster = function(){
					masterService.listItemMaster().then(function(resultData) {
				
					$scope.itemMasterList = resultData.data;
					$scope.displayItemMaster = [].concat($scope.itemMasterList);
					$scope.predicates = [ 'itemCode', 'itemName' ];
				});
			}
			$scope.listItemMaster();//on load
			
			$scope.deleteItemMaster = function(row) {
				masterService.deleteItemMaster(row).then(
						function(resultData) {
							alertService.triggerMessage(localeService.alert.success);
							//TODO exception handling
							$scope.listAG();//should call entire list again ??
						});

			}

			$scope.saveItemMaster = function(row) {
				
				if($scope.isEdit == true){
					masterService.updateItemMaster(row).then(function(resultData) {
						//TODO exception handling
						alertService.triggerMessage(resultData.data);
						$scope.listAG();//should call entire list again ??
						$scope.isEdit = false;
					});
				}else{
					masterService.saveItemMaster(row).then(function(resultData) {
						alertService.triggerMessage(resultData.data);
						$scope.listAG();//should call entire list again ??
					});
				}
			}

			$scope.editItemMaster = function(row) {
				
				$scope.isEdit = true;
				$scope.newEntry = angular.copy(row);

			}

			$scope.clearItemMaster = function() {
				$scope.isEdit = false;
				alertService.triggerMessage(localeService.alert.success);
				$scope.newEntry ={};
				//alert("Cleared");
			}

});