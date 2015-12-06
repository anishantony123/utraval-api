pos.factory('localeService', function () {
	var localeService = {};
	
	/*******Menu Implementation Start**********/
	localeService.menu = {};
	localeService.menu.masters = "Masters";
	localeService.menu.accountGroups = "Account Groups";
	localeService.menu.accountSubGroups = "Account Sub Groups";
	localeService.menu.accountHead = "Account Head";
	localeService.menu.company = "Company";
	localeService.menu.itemGroups = "Item Groups";
	localeService.menu.itemSubGroups = "Item Sub Groups";
	localeService.menu.itemMaster = "Item Master";
	localeService.menu.made = "Made";
	localeService.menu.priceEquity = "Price Enquiry";
	localeService.menu.unitMaster = "Unit Master";
	

	localeService.menu.inventory = "Inventory";
	localeService.menu.purchaseOrder = "Purchase Order";
	localeService.menu.purchaseReceiving = "Purchase Receiving";
	localeService.menu.sales = "Sales";
	localeService.menu.salesReturn = "Sales Return";
	localeService.menu.purchaseReturn = "Purchase Return";
	localeService.menu.damagedStocks = "Damaged Stocks";
	localeService.menu.openingStocks = "Opening Stocks";
	
	
	localeService.menu.salesReturn = "Sales & Return";
	localeService.menu.purchaseReturn = "Purchase & Return";
	localeService.menu.stockReports = "Stock Reports";
	localeService.menu.txnVouchers = "Transactions/Vouchers";
	localeService.menu.financialStmt = "Financial Statement";
	localeService.menu.tools = "Tools";
	/*******Menu Implementation End**********/
	/*******Menu Implementation Start**********/
	
	
	/*******Menu Implementation End**********/
	
	/*******Alert Implementation Start**********/
	localeService.alert = {};
	localeService.alert.success = {};
	localeService.alert.success.title = "Success";
	localeService.alert.success.content = "Operation Completed Successfully";
	localeService.alert.success.alertType = "success";
	/*******Alert Implementation End**********/
	return localeService;
});