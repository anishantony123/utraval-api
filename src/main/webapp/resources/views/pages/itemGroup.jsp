<section ng-controller="ItemGroupController">
  
  <div class="leftpanel">
    
    
    <logo-panel></logo-panel>
    <div class="leftpanelinner">

      <pos-menu></pos-menu>
 
    </div>
  </div>
  
  <div class="mainpanel">
    
    <pos-header></pos-header>
        
    <div class="pageheader">
      <h2> Item Group </h2>
      <div class="breadcrumb-wrapper">
      </div>
    </div>
    
    <div class="contentpanel">
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="#" class="panel-close">&times;</a>
            <a href="#" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">Item Group Edit Panel</h4>
        </div>
        <div class="panel-body">
        	<div class="row">
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Item Group Code</label>
                    <input type="text" name="groupcode" class="form-control" ng-model="newEntry.groupCode" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Item Group Name</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.groupName" />
                  </div>
                </div><!-- col-sm-6 -->
                
                <div class="col-sm-4">
                 
                </div><!-- col-sm-6 -->
                <div class="col-sm-2">
                   <div class="button-manage-panel">
	                 <button class="btn btn-primary" ng-click="saveItemGroup(newEntry)">Save</button>
	                 <button class="btn btn-primary" ng-click="clearItemGroup()">Cancel</button>
	                 </div>
                </div><!-- col-sm-6 -->
              </div><!-- row -->
        </div>
      </div>
      
      <div class="panel panel-default">
        <div class="panel-body">
        	<table st-safe-src="itemGroupList" st-table="displayitemGroup"  class="table table-striped">
			<thead>
			<tr>
				<th st-sort="companyCode">Item Code</th>
				<th st-sort="companyName">Item Name</th>
				<th>Actions</th>
			</tr>
			<tr>
				<th>
					<input st-search="groupCode" placeholder="Item Code" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="groupName" placeholder="Item Name" class="input-sm form-control" type="search"/>
				</th>
				
				
				
				
				<th>
				</th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="row in displayitemGroup">
				<td>{{row.groupCode | uppercase}}</td>
				<td>{{row.groupName | uppercase}}</td>
				<td>[<a ng-click="deleteItemGroup(row)">Delete</a>] [<a ng-click="editItemGroup(row)">Edit</a>]</td>
			</tr>
			</tbody>
		</table> 
        </div>
      </div>
      
      
      
      
      
    </div>
    
  </div><!-- mainpanel -->
  
  
  
</section>