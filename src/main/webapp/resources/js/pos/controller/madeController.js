pos.controller('MadeController',function($scope, $filter, masterService, localeService, alertService){
	$scope.isEdit = false;
	$scope.editingRow;
			$scope.listMade = function(){
					masterService.listMade().then(function(resultData) {
				
					$scope.madeList = resultData.data;
					$scope.displayMade = [].concat($scope.madeList);
					$scope.predicates = [ 'madeCode', 'madeName' ];
				});
			}
			$scope.listMade();//on load
			
			$scope.deleteMade = function(row) {
				masterService.deleteMade(row).then(
						function(resultData) {
							alertService.triggerMessage(localeService.alert.success);
							//TODO exception handling
							$scope.listMade();//should call entire list again ??
						});

			}

			$scope.saveMade = function(row) {
				
				if($scope.isEdit == true){
					masterService.updateMade(row).then(function(resultData) {
						//TODO exception handling
						alertService.triggerMessage(resultData.data);
						$scope.listMade();//should call entire list again ??
						$scope.isEdit = false;
					});
				}else{
					masterService.saveMade(row).then(function(resultData) {
						alertService.triggerMessage(resultData.data);
						$scope.listMade();//should call entire list again ??
					});
				}
			}

			$scope.editMade = function(row) {
				
				$scope.isEdit = true;
				$scope.newEntry = angular.copy(row);

			}

			$scope.clearMade = function() {
				$scope.isEdit = false;
				alertService.triggerMessage(localeService.alert.success);
				$scope.newEntry ={};
				//alert("Cleared");
			}

});