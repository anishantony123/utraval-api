pos.controller('UnitMasterController',function($scope, $filter, masterService, localeService, alertService){
	$scope.isEdit = false;
	$scope.editingRow;
			$scope.listUnit = function(){
					masterService.listUnit().then(function(resultData) {
				
					$scope.unitList = resultData.data;
					$scope.displayUnit = [].concat($scope.unitList);
					$scope.predicates = [ 'unitCode', 'unitName', 'unitDescription' ];
				});
			}
			$scope.listUnit();//on load
			
			$scope.deleteUnitCode = function(row) {
				masterService.deleteUnit(row).then(
						function(resultData) {
							alertService.triggerMessage(localeService.alert.success);
							//TODO exception handling
							$scope.listUnit();//should call entire list again ??
						});

			}

			$scope.saveMade = function(row) {
				
				if($scope.isEdit == true){
					masterService.updateUnit(row).then(function(resultData) {
						//TODO exception handling
						alertService.triggerMessage(resultData.data);
						$scope.listUnit();//should call entire list again ??
						$scope.isEdit = false;
					});
				}else{
					masterService.saveUnit(row).then(function(resultData) {
						alertService.triggerMessage(resultData.data);
						$scope.listUnit();//should call entire list again ??
					});
				}
			}

			$scope.editUnitName = function(row) {
				
				$scope.isEdit = true;
				$scope.newEntry = angular.copy(row);

			}

			$scope.clearUnit = function() {
				$scope.isEdit = false;
				alertService.triggerMessage(localeService.alert.success);
				$scope.newEntry ={};
				//alert("Cleared");
			}	

});