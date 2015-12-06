<section ng-controller="AccountGrpController">
  
  <div class="leftpanel">
    
    
    <logo-panel></logo-panel>
    <div class="leftpanelinner">

      <pos-menu></pos-menu>
 
    </div>
  </div>
  
  <div class="mainpanel">
   
    <pos-header></pos-header>
        
    <div class="pageheader">
      <h2> Account Group </h2>
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
          <h4 class="panel-title">Account Group Details</h4>
        </div>
        <div class="panel-body">
          <div class="row">
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Group Code</label>
                    <input type="text" name="groupcode" class="form-control" ng-model="newEntry.grpCode" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Group Name</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.grpName" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-4">
                 
                </div>
                 <div class="col-sm-2">
                 <div class="button-manage-panel">
                 <button class="btn btn-primary" ng-click="saveAG(newEntry)">Save</button>
                 <button class="btn btn-primary" ng-click="clearAG()">Cancel</button>
                 </div>
                </div>
              </div><!-- row -->
        </div>
      </div>
      
      <div class="panel panel-default">
       
        <div class="panel-body">
         <table st-safe-src="groupList" st-table="displayAccountGroup"  class="table table-striped">
			<thead>
			<tr>
				<th st-sort="grpCode">Group Code</th>
				<th st-sort="grpName">Group Name</th>
				<th>Actions</th>
			</tr>
			<tr>
				<th>
					<input st-search="grpCode" placeholder="Group Code" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="grpName" placeholder="Group Name" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
				</th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="row in displayAccountGroup">
				<td>{{row.grpCode | uppercase}}</td>
				<td>{{row.grpName | uppercase}}</td>
				<td>[<a ng-click="deleteAG(row)">Delete</a>] [<a ng-click="editAG(row)">Edit</a>]</td>
			</tr>
			</tbody>
		</table> 
        </div>
      </div>
      
      
      
      
      
    </div>
    
  </div><!-- mainpanel -->
  
  
  
</section>