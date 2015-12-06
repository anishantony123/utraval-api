pos.controller('ItemSubGroupController',function($scope, $filter, masterService){
	$scope.isEdit = false;
	$scope.editingRow;
			$scope.listItemSubGroup = function(){
					masterService.listItemSubGroup().then(function(resultData) {
				
					$scope.itemSubGroupList = resultData.data;
					$scope.displayitemSubGroup = [].concat($scope.itemSubGroupList);
					$scope.predicates = [ 'subGroupCode', 'subGroupName' ];
				});
			}
			$scope.listItemSubGroup();//on load
	
			masterService.listItemGroup().then(function(resultData) {
				$scope.itemGroupList = resultData.data;
			});
			$scope.deleteItemSubGroup = function(row) {
				masterService.deleteItemSubGroup(row).then(
						function(resultData) {
							alertService.triggerMessage(localeService.alert.success);
							//TODO exception handling
							$scope.listItemSubGroup();//should call entire list again ??
						});

			}

			$scope.saveItemSubGroup = function(row) {
				
				if($scope.isEdit == true){
					masterService.updateItemSubGroup(row).then(function(resultData) {
						//TODO exception handling
						alertService.triggerMessage(resultData.data);
						$scope.listItemGroup();//should call entire list again ??
						$scope.isEdit = false;
					});
				}else{
					masterService.saveItemSubGroup(row).then(function(resultData) {
						alertService.triggerMessage(resultData.data);
						$scope.listItemGroup();//should call entire list again ??
					});
				}
			}

			$scope.editItemSubGroup = function(row) {
				
				$scope.isEdit = true;
				$scope.newEntry = angular.copy(row);

			}

});