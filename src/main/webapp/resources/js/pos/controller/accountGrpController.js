pos.controller('AccountGrpController',
		function($scope, $filter, $timeout,Flash, masterService, localeService, alertService) {
	$scope.isEdit = false;
	$scope.editingRow;
			$scope.listAG = function(){
					masterService.listAccountGroup().then(function(resultData) {
				
					$scope.groupList = resultData.data;
					$scope.displayAccountGroup = [].concat($scope.groupList);
					$scope.predicates = [ 'grpCode', 'grpName' ];
				});
			}
			$scope.listAG();//on load
			
			$scope.deleteAG = function(row) {
				masterService.deleteAccountGroup(row).then(
						function(resultData) {
							alertService.triggerMessage(localeService.alert.success);
							//TODO exception handling
							$scope.listAG();//should call entire list again ??
						});

			}

			$scope.saveAG = function(row) {
				
				if($scope.isEdit == true){
					masterService.updateAccountGroup(row).then(function(resultData) {
						//TODO exception handling
						alertService.triggerMessage(resultData.data);
						$scope.listAG();//should call entire list again ??
						$scope.isEdit = false;
					});
				}else{
					masterService.saveAccountGroup(row).then(function(resultData) {
						alertService.triggerMessage(resultData.data);
						$scope.listAG();//should call entire list again ??
					});
				}
			}

			$scope.editAG = function(row) {
				
				$scope.isEdit = true;
				$scope.newEntry = angular.copy(row);

			}

			$scope.clearAG = function() {
				$scope.isEdit = false;
				alertService.triggerMessage(localeService.alert.success);
				$scope.newEntry ={};
				//alert("Cleared");
			}
		});