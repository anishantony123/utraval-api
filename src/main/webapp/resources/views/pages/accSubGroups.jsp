<section ng-controller="AccountSubGrpController">
  
  <div class="leftpanel">
    
    
    <logo-panel></logo-panel>
    <div class="leftpanelinner">

      <pos-menu></pos-menu>
 
    </div>
  </div>
  
  <div class="mainpanel">
    
    <pos-header></pos-header>
        
    <div class="pageheader">
      <h2> Account Sub Group </h2>
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
          <h4 class="panel-title">Account Sub Group Details</h4>
        </div>
        <div class="panel-body">
          <div class="row">
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Subgroup Code</label>
                    <input type="text" name="groupcode" class="form-control" ng-model="newEntry.grpCode" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Subgroup Name</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.grpName" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                <label class="control-label">Group Name</label>
                  <ui-select ng-model="newEntry.accountGroup" theme="selectize" ng-disabled="disabled" >
				    <ui-select-match placeholder="Select Account">{{$select.selected.grpName}}</ui-select-match>
				    <ui-select-choices repeat="group in accountGroupList | filter: $select.search">
				      <span ng-bind-html="group.grpName | highlight: $select.search"></span>
				    </ui-select-choices>
				  </ui-select>
                </div>
                 <div class="col-sm-2">
                 <div class="button-manage-panel">
                 <button class="btn btn-primary" ng-click="saveASG(newEntry)">Save</button>
                 <button class="btn btn-primary" ng-click="clearASG()">Cancel</button>
                 </div>
                </div>
              </div><!-- row -->
        </div>
      </div>
      
      <div class="panel panel-default">
       
        <div class="panel-body">
         <table st-safe-src="subGroupList" st-table="displayAccountSubGroup"  class="table table-striped">
			<thead>
			<tr>
				<th st-sort="grpCode">Subgroup Code</th>
				<th st-sort="grpName">Subgroup Name</th>
				<th st-sort="accountGroup.grpName">Group Name</th>
				<th st-sort="accountGroup.grpCode">Group Name</th>
				<th>Actions</th>
			</tr>
			<tr>
				<th>
					<input st-search="grpCode" placeholder="Subgroup Code" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="grpName" placeholder="Subgroup Name" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="accountGroup.grpName" placeholder="Group Name" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="accountGroup.grpCode" placeholder="Group Name" class="input-sm form-control" type="search"/>
				</th>
				<th>
				</th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="row in displayAccountSubGroup">
				<td>{{row.grpCode | uppercase}}</td>
				<td>{{row.grpName | uppercase}}</td>
				<td>{{row.accountGroup.grpName | uppercase}}</td>
				<td>{{row.accountGroup.grpCode | uppercase}}</td>
				<td>[<a ng-click="deleteASG(row)">Delete</a>] [<a ng-click="editASG(row)">Edit</a>]</td>
			</tr>
			</tbody>
		</table> 
        </div>
      </div>
      
      
      
      
      
    </div>
    
  </div><!-- mainpanel -->
  
  
  
</section>