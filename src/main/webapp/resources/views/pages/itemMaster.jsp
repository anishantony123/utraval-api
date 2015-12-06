<section ng-controller="ItemMasterController">
  
  <div class="leftpanel">
    
    
    <logo-panel></logo-panel>
    <div class="leftpanelinner">

      <pos-menu></pos-menu>
 
    </div>
  </div>
  
  <div class="mainpanel">
    
    <pos-header></pos-header>
        
    <div class="pageheader">
      <h2> Item Master </h2>
      <div class="breadcrumb-wrapper">
      </div>
    </div>
    
    <div class="contentpanel">
      <div class="row">
      <div class="col-sm-7">
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="#" class="panel-close">&times;</a>
            <a href="#" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">Company</h4>
        </div>
        <div class="panel-body">
        
        	<div class="row">
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label">Item Code</label>
                    <input type="text" name="groupcode" class="form-control" ng-model="newEntry.itemCode" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label">Item Name</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.itemName" />
                  </div>
                </div><!-- col-sm-6 -->
               </div>
               <div class="row">
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label">Item In Arabic</label>
                    <input type="text" name="groupcode" class="form-control" ng-model="newEntry.itemInArabic" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label">Item Group</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.itemGroup.groupCode" />
                  </div>
                </div><!-- col-sm-6 -->
               </div>
               <div class="row">
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label">Item Sub Group</label>
                    <input type="text" name="groupcode" class="form-control" ng-model="newEntry.itemSubGroup.subGroupCode" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label">Company</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.company.companyCode" />
                  </div>
                </div><!-- col-sm-6 -->
               </div>
               
               <div class="row">
                <div class="col-sm-4">
                  <div class="form-group">
                    <label class="control-label">Reorder Qty</label>
                    <input type="text" name="groupcode" class="form-control" ng-model="newEntry.reorderOty" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-4">
                  <div class="form-group">
                    <label class="control-label">Purchase order Qty</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.purchaseOrderQty" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-4">
                  <div class="form-group">
                    <label class="control-label">Made</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.made.madeCode" />
                  </div>
                </div><!-- col-sm-6 -->
               </div>
               
               <div class="row">
                <div class="col-sm-5">
                   <div class="button-manage-panel">
	                 <button class="btn btn-primary" ng-click="saveItemMaster(newEntry)">Save</button>
	                 <button class="btn btn-primary" ng-click="clearItemMaster()">Cancel</button>
	                 </div>
                </div><!-- col-sm-6 -->
              </div><!-- row -->
        
        </div>
      </div>
      </div>
      <div class="col-sm-5">
      <div class="panel panel-default">
        <div class="panel-body">
        <table st-safe-src="itemMasterList" st-table="displayItemMaster"  class="table table-striped">
			<thead>
			<tr>
				<th st-sort="itemCode">Item Code</th>
				<th st-sort="itemName">Item Name</th>
				<th>Actions</th>
			</tr>
			<tr>
				<th>
					<input st-search="itemCode" placeholder="Item Code" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="itemName" placeholder="Item Name" class="input-sm form-control" type="search"/>
				</th>
				
				
				
				
				<th>
				</th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="row in displayItemMaster">
				<td>{{row.itemCode | uppercase}}</td>
				<td>{{row.itemName | uppercase}}</td>
				<td>[<a ng-click="deleteItemMaster(row)">Delete</a>] [<a ng-click="editItemMaster(row)">Edit</a>]</td>
			</tr>
			</tbody>
		</table> 
        </div>
      </div>
      </div>
      </div>
      
      
      
      <div class="row">
      <div class="col-sm-7">
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="#" class="panel-close">&times;</a>
            <a href="#" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">Company</h4>
        </div>
        <div class="panel-body">
        
        	<div class="row">
                <div class="col-sm-2">
                  <div class="form-group">
                    <label class="control-label">Currency</label>
                    <input type="text" name="groupcode" class="form-control" ng-model="newEntry.itemCode" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-2">
                  <div class="form-group">
                    <label class="control-label">Unit</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.itemName" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-2">
                  <div class="form-group">
                    <label class="control-label">Primary Unit</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.itemName" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-2">
                  <div class="form-group">
                    <label class="control-label">Cost</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.itemName" />
                  </div>
                </div>
				<div class="col-sm-2">
                  <div class="form-group">
                    <label class="control-label">SalRate</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.itemName" />
                  </div>
                </div>
               </div>
               
        
        </div>
      </div>
      </div>
      
      </div>
      
      
      
      
      
    </div>
    
  </div><!-- mainpanel -->
  
  
  
</section>