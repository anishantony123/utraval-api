'use strict';

/* Services */
pos.factory('masterService', function ($http) {
	
	var masterService = {};
	/*Account Group*/
	masterService.listAccountGroup = function(){
		return $http.get("masters/accountgrp/list"); 
	}
	
	masterService.saveAccountGroup = function(accountGrpInfo){
		return $http.post("masters/accountgrp/save",accountGrpInfo); 
	}
	
	masterService.updateAccountGroup = function(accountGrpInfo){
		return $http.post("masters/accountgrp/update",accountGrpInfo); 
	}
	
	masterService.deleteAccountGroup = function(accountGrp){
		return $http.post("masters/accountgrp/delete",accountGrp);  
	}
	
	/*Account Sub Group*/
	masterService.listAccountSubGroup = function(){
		return $http.get("masters/accountsubgrp/list");  
	}
	masterService.saveAccountSubGroup = function(accountSubGrpInfo){
		return $http.post("masters/accountsubgrp/save",accountSubGrpInfo); 
	}
	
	masterService.updateAccountSubGroup = function(accountSubGrpInfo){
		return $http.post("masters/accountgrp/update",accountSubGrpInfo); 
	}
	
	masterService.deleteAccountSubGroup = function(accountSubGrp){
		return $http.post("masters/accountsubgrp/delete",accountSubGrp);  
	}
	
	/*Account Master*/
	masterService.listAccountHead = function(){
		return $http.get("masters/accounthead/list");  
	}
	
	masterService.saveAccountHead = function(accountHeadInfo){
		return $http.post("masters/accounthead/save",accountHeadInfo); 
	}
	
	masterService.updateAccountHead = function(accountHeadInfo){
		return $http.post("masters/accounthead/update",accountHeadInfo); 
	}
	
	masterService.deleteAccountHead = function(accountHeadInfo){
		return $http.post("masters/accounthead/delete",accountHeadInfo);  
	}
	
	masterService.listAccountTypes = function(accountHeadInfo){
		return $http.post("masters/accounttypes/list",accountHeadInfo);  
	}
	
	/*Company Portion*/
	masterService.listCompany = function(){
		return $http.get("masters/company/list");  
	}
	
	masterService.saveCompany = function(companyInfo){
		return $http.post("masters/company/save",companyInfo); 
	}
	
	masterService.updateCompany = function(companyInfo){
		return $http.post("masters/company/update",companyInfo); 
	}
	
	masterService.deleteCompany = function(companyInfo){
		return $http.post("masters/company/delete",companyInfo);  
	}
	
	/*Item Group Portion*/
	masterService.listItemGroup = function(){
		return $http.get("masters/itemgroup/list");  
	}
	
	masterService.saveItemGroup = function(groupInfo){
		return $http.post("masters/itemgroup/save",groupInfo); 
	}
	
	masterService.updateItemGroup = function(groupInfo){
		return $http.post("masters/itemgroup/update",groupInfo); 
	}
	
	masterService.deleteItemGroup = function(groupInfo){
		return $http.post("masters/itemgroup/delete",groupInfo);  
	}
	
	/*Item Sub Group Portion*/
	masterService.listItemSubGroup = function(){
		return $http.get("masters/itemsubgroup/list");  
	}
	
	masterService.saveItemSubGroup = function(groupInfo){
		return $http.post("masters/itemsubgroup/save",groupInfo); 
	}
	
	masterService.updateItemSubGroup = function(groupInfo){
		return $http.post("masters/itemsubgroup/update",groupInfo); 
	}
	
	masterService.deleteItemSubGroup = function(groupInfo){
		return $http.post("masters/itemsubgroup/delete",groupInfo);  
	}
	
	/*Made Portion*/
	masterService.listMade = function(){
		return $http.get("masters/made/list");  
	}
	
	masterService.saveMade = function(madeInfo){
		return $http.post("masters/made/save",madeInfo); 
	}
	
	masterService.updateMade = function(madeInfo){
		return $http.post("masters/made/update",madeInfo); 
	}
	
	masterService.deleteMade = function(madeInfo){
		return $http.post("masters/made/delete",madeInfo);  
	}
	
	/*Unit Portion*/
	masterService.listUnit = function(){
		return $http.get("masters/unit/list");  
	}
	
	masterService.saveUnit = function(unitInfo){
		return $http.post("masters/unit/save",unitInfo); 
	}
	
	masterService.updateUnit = function(unitInfo){
		return $http.post("masters/unit/update",unitInfo); 
	}
	
	masterService.deleteUnit = function(unitInfo){
		return $http.post("masters/unit/delete",unitInfo);  
	}
	
	/*Item Master Portion*/
	masterService.listItemMaster = function(){
		return $http.get("masters/itemmaster/list");  
	}
	
	masterService.saveItemMaster = function(itemMasterInfo){
		return $http.post("masters/itemmaster/save",itemMasterInfo); 
	}
	
	masterService.updateItemMaster = function(itemMasterInfo){
		return $http.post("masters/itemmaster/update",itemMasterInfo); 
	}
	
	masterService.deleteItemMaster = function(itemMasterInfo){
		return $http.post("masters/itemmaster/delete",itemMasterInfo);  
	}
	
	return masterService;
	
	
});