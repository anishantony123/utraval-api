pos.controller('AccountHeadController',function($scope, $filter, masterService,alertService, localeService){
	$scope.isEdit = false;
	$scope.editingRow;
			$scope.listAHead = function(){
				masterService.listAccountHead().then(function(resultData) { 
				    $scope.accountHeadList = resultData.data;
				    $scope.displayAccountHead = [].concat($scope.accountHeadList);
				    $scope.predicates = ['accCode', 'accName','accSubGroup','accType.typeName'];
				});
			}
			$scope.listAHead();//on load	
	
	
	
		
	masterService.listAccountSubGroup().then(function(resultData) {
		$scope.accountSubGroupList = resultData.data;
	});	
	
	masterService.listAccountTypes().then(function(resultData) {
		$scope.accountTypeList = resultData.data;
	});	
	
	 $scope.deleteAHead = function(row){
		 masterService.deleteAccountHead(row).then(function(resultData){
			 alertService.triggerMessage(resultData.data);
			 $scope.listAHead();
		 })
		 
	 }
	 
	 $scope.saveAHead = function(row){
		 if($scope.isEdit == true){
			 masterService.updateAccountHead(row).then(function(resultData){
				 alertService.triggerMessage(resultData.data);
				$scope.listAHead();//should call entire list again ??
				$scope.isEdit = false;
			 });
			}else{
				masterService.saveAccountHead(row).then(function(resultData){
					 alertService.triggerMessage(resultData.data);
					 $scope.listAHead();
				 });
			}
		 
		
		 
	 }
	 
	 $scope.editAHead = function(row){
		 $scope.isEdit = true;
			$scope.newEntry = angular.copy(row);
		 
	 }
	 
	 $scope.clearAHead = function(){
		 alertService.triggerMessage(localeService.alert.success);
		 $scope.isEdit = false;
			alertService.triggerMessage(localeService.alert.success);
			$scope.newEntry ={};
	 }
	 

});