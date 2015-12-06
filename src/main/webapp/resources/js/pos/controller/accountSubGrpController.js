pos.controller('AccountSubGrpController',function($scope, $filter, masterService,alertService, localeService){
	$scope.isEdit = false;
	$scope.editingRow;
			$scope.listASG = function(){
				masterService.listAccountSubGroup().then(function(resultData) { 
				    $scope.subGroupList = resultData.data;
				    $scope.displayAccountSubGroup = [].concat($scope.subGroupList);
				    $scope.predicates = ['grpCode', 'grpName','accountGroup.grpName','accountGroup.grpCode'];
				});
			}
			$scope.listASG();//on load
	
	
	masterService.listAccountGroup().then(function(resultData) {
		$scope.accountGroupList = resultData.data;
	});
	
	 $scope.deleteASG = function(row){
		 masterService.deleteAccountSubGroup(row).then(function(resultData){
			 alertService.triggerMessage(resultData.data);
			 $scope.listASG();
		 })
		 
	 }
	 
	 $scope.saveASG = function(row){
		 if($scope.isEdit == true){
			 masterService.updateAccountSubGroup(row).then(function(resultData){
				 alertService.triggerMessage(resultData.data);
				$scope.listASG();//should call entire list again ??
				$scope.isEdit = false;
			 });
			}else{
				masterService.saveAccountSubGroup(row).then(function(resultData) {
					alertService.triggerMessage(resultData.data);
					$scope.listASG();//should call entire list again ??
				});
			}
		 
		 
		 
	 }
	 
	 $scope.editASG = function(row){
		 $scope.isEdit = true;
		$scope.newEntry = angular.copy(row);
		 
	 }
	 
	 $scope.clearASG = function(){
		 $scope.isEdit = false;
			alertService.triggerMessage(localeService.alert.success);
			$scope.newEntry ={};
		 
	 }
});