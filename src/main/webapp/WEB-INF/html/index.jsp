<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="resources/images/favicon.png" type="image/png">
   <link href="resources/css/pos/style.default.css" rel="stylesheet"> 
  <link href="resources/css/pos/select.css" rel="stylesheet">
  
  <!-- Select2 theme -->
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.8.5/css/selectize.default.css">
  <link href="resources/css/pos/angular-flash.css" rel="stylesheet">
  
  
<title>Basic POS</title>
</head>

<body ng-app="pos">
<div flash-message="5000" ></div>
<div ng-view=""></div>


 
 <!-- Angular Modules -->
<script type="text/javascript" src="resources/js/angular/1.3/angular/angular.js"></script>
<script type="text/javascript" src="resources/js/angular/1.3/angular-route/angular-route.js"></script>
<script type="text/javascript" src="resources/js/angular/1.3/angular-sanitize/angular-sanitize.js"></script>
<script type="text/javascript" src="resources/js/angular/1.3/angular-animate/angular-animate.js"></script>
<script type="text/javascript" src="resources/js/angular/1.3/select/select.js"></script>
<script type="text/javascript" src="resources/js/angular/1.3/angular-flash/angular-flash.js"></script>
<script type="text/javascript" src="resources/js/angular/1.3/prettify/prettify.js"></script>


 <!-- Angular Modules -->
 <script type="text/javascript" src="resources/js/angular/1.3/smart-table/smart-table.js"></script>
 
 
<!-- User Libraries Start -->
<script type="text/javascript" src="resources/js/pos/app.js"></script>



<script type="text/javascript" src="resources/js/pos/controller/accountGrpController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/accountSubGrpController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/accountHeadController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/companyController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/damagedStockController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/itemGroupController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/itemMasterController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/itemSubGroupController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/madeController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/openingStockController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/priceEnquiryController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/purchaseOrderController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/purchaseReceivingController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/purchaseReturnController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/salesController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/salesReturnController.js"></script>
<script type="text/javascript" src="resources/js/pos/controller/unitMasterController.js"></script>

<script type="text/javascript" src="resources/js/pos/services/localeService.js"></script>
<script type="text/javascript" src="resources/js/pos/services/masterService.js"></script>
<script type="text/javascript" src="resources/js/pos/services/alertService.js"></script>

<script type="text/javascript" src="resources/views/widgets/menu.js"></script>
<script type="text/javascript" src="resources/views/widgets/header.js"></script>
 <script type="text/javascript" src="resources/views/widgets/logopanel.js"></script>
 
 </body>
</html>
