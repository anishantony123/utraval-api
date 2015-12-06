<section ng-controller="ItemSubGroupController">
  
  <div class="leftpanel">
    
    
    <logo-panel></logo-panel>
    <div class="leftpanelinner">

      <pos-menu></pos-menu>
 
    </div>
  </div>
  
  <div class="mainpanel">
    
    <pos-header></pos-header>
        
    <div class="pageheader">
      <h2> Item Sub Group </h2>
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
                    <label class="control-label">Sub Group Code</label>
                    <input type="text" name="groupcode" class="form-control" ng-model="newEntry.subGroupCode" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Sub Group Name</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.subGroupName" />
                  </div>
                </div><!-- col-sm-6 -->
                
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Group Name</label>
                    <ui-select ng-model="newEntry.group" theme="selectize" ng-disabled="disabled" >
				    <ui-select-match placeholder="Select Group">{{$select.selected.groupName}}</ui-select-match>
				    <ui-select-choices repeat="group in itemGroupList | filter: $select.search">
				      <span ng-bind-html="group.groupName | highlight: $select.search"></span>
				    </ui-select-choices>
				  </ui-select>
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Description</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.description" />
                  </div>
                </div><!-- col-sm-6 -->
              </div><!-- row -->
              <div class="row">
              <div class="col-sm-3">
                 <div class="button-manage-panel">
                 <button class="btn btn-primary" ng-click="saveSubGroup(newEntry)">Save</button>
                 <button class="btn btn-primary" ng-click="clearSubGroup()">Cancel</button>
                 </div>
                </div><!-- col-sm-6 -->
              </div>
        </div>
      </div>
      
      <div class="panel panel-default">
        <div class="panel-body">
        <table st-safe-src="itemSubGroupList" st-table="displayitemSubGroup"  class="table table-striped">
			<thead>
			<tr>
				<th st-sort="subGroupCode">Item Code</th>
				<th st-sort="subGroupName">Item Name</th>
				<th>Actions</th>
			</tr>
			<tr>
				<th>
					<input st-search="subGroupCode" placeholder="Item Code" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="subGroupName" placeholder="Item Name" class="input-sm form-control" type="search"/>
				</th>
				<th>
				</th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="row in displayitemSubGroup">
				<td>{{row.subGroupCode | uppercase}}</td>
				<td>{{row.subGroupName | uppercase}}</td>
				<td>[<a ng-click="deleteItemSubGroup(row)">Delete</a>] [<a ng-click="editItemSubGroup(row)">Edit</a>]</td>
			</tr>
			</tbody>
		</table> 
        </div>
      </div>
      
      
      
      
      
    </div>
    
  </div><!-- mainpanel -->
  
  
  
</section>