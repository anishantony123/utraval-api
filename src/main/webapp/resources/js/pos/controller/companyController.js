pos.controller('CompanyController',function($scope, $filter, masterService,alertService, localeService){
	$scope.isEdit = false;
	$scope.editingRow;
			$scope.listCompany = function(){
					masterService.listCompany().then(function(resultData) {
				
					$scope.companyList = resultData.data;
					$scope.displaycompanyList = [].concat($scope.companyList);
					$scope.predicates = [ 'companyCode', 'companyName', 'sale', 'purchase' ];
				});
			}
			$scope.listCompany();//on load
	
			
			$scope.deleteCompany = function(row) {
				masterService.deleteCompany(row).then(
						function(resultData) {
							alertService.triggerMessage(localeService.alert.success);
							//TODO exception handling
							$scope.listCompany();//should call entire list again ??
						});

			}

			$scope.saveCompany = function(row) {
				
				if($scope.isEdit == true){
					masterService.updateCompany(row).then(function(resultData) {
						//TODO exception handling
						alertService.triggerMessage(resultData.data);
						$scope.listCompany();//should call entire list again ??
						$scope.isEdit = false;
					});
				}else{
					masterService.saveCompany(row).then(function(resultData) {
						alertService.triggerMessage(resultData.data);
						$scope.listCompany();//should call entire list again ??
					});
				}
			}

			$scope.editCompany = function(row) {
				
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