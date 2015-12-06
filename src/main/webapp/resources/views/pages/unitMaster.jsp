<section ng-controller="UnitMasterController">
  
  <div class="leftpanel">
    
    
    <logo-panel></logo-panel>
    <div class="leftpanelinner">

      <pos-menu></pos-menu>
 
    </div>
  </div>
  
  <div class="mainpanel">
    
    <pos-header></pos-header>
        
    <div class="pageheader">
      <h2> Unit Master </h2>
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
          <h4 class="panel-title">Company</h4>
        </div>
        <div class="panel-body">
         <div class="row">
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Unit Code</label>
                    <input type="text" name="groupcode" class="form-control" ng-model="newEntry.unitCode" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Unit Name</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.unitName" />
                  </div>
                </div><!-- col-sm-6 -->
                
                <div class="col-sm-3">
                 <div class="form-group">
                    <label class="control-label">Description</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.unitDescription" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-2">
                   <div class="button-manage-panel">
	                 <button class="btn btn-primary" ng-click="saveUnit(newEntry)">Save</button>
	                 <button class="btn btn-primary" ng-click="clearUnit()">Cancel</button>
	                 </div>
                </div><!-- col-sm-6 -->
              </div><!-- row -->
        </div>
      </div>
      
      <div class="panel panel-default">
        <div class="panel-body">
        <table st-safe-src="unitList" st-table="displayUnit"  class="table table-striped">
			<thead>
			<tr>
				<th st-sort="madeCode">Unit Code</th>
				<th st-sort="madeName">Unit Name</th>
				<th>Actions</th>
			</tr>
			<tr>
				<th>
					<input st-search="unitCode" placeholder="Unit Code" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="unitName" placeholder="Unit Name" class="input-sm form-control" type="search"/>
				</th>
				
				
				
				
				<th>
				</th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="row in displayUnit">
				<td>{{row.unitCode | uppercase}}</td>
				<td>{{row.unitName | uppercase}}</td>
				<td>[<a ng-click="deleteUnitCode(row)">Delete</a>] [<a ng-click="editUnitName(row)">Edit</a>]</td>
			</tr>
			</tbody>
		</table> 
        </div>
      </div>
      
      
      
      
      
    </div>
    
  </div><!-- mainpanel -->
  
  
  
</section>