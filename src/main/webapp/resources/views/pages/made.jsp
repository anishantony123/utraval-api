<section ng-controller="MadeController">
  
  <div class="leftpanel">
    
    
    <logo-panel></logo-panel>
    <div class="leftpanelinner">

      <pos-menu></pos-menu>
 
    </div>
  </div>
  
  <div class="mainpanel">
    
    <pos-header></pos-header>
        
    <div class="pageheader">
      <h2> Made </h2>
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
                    <label class="control-label">Code</label>
                    <input type="text" name="groupcode" class="form-control" ng-model="newEntry.madeCode" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Made</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.madeName" />
                  </div>
                </div><!-- col-sm-6 -->
                
                <div class="col-sm-4">
                 
                </div><!-- col-sm-6 -->
                <div class="col-sm-2">
                   <div class="button-manage-panel">
	                 <button class="btn btn-primary" ng-click="saveMade(newEntry)">Save</button>
	                 <button class="btn btn-primary" ng-click="clearMade()">Cancel</button>
	                 </div>
                </div><!-- col-sm-6 -->
              </div><!-- row -->
        </div>
      </div>
      
      <div class="panel panel-default">
        <div class="panel-body">
        <table st-safe-src="madeList" st-table="displayMade"  class="table table-striped">
			<thead>
			<tr>
				<th st-sort="madeCode">Made Code</th>
				<th st-sort="madeName">Made Name</th>
				<th>Actions</th>
			</tr>
			<tr>
				<th>
					<input st-search="madeCode" placeholder="Made Code" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="madeName" placeholder="Made Name" class="input-sm form-control" type="search"/>
				</th>
				
				
				
				
				<th>
				</th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="row in displayMade">
				<td>{{row.madeCode | uppercase}}</td>
				<td>{{row.madeName | uppercase}}</td>
				<td>[<a ng-click="deleteMade(row)">Delete</a>] [<a ng-click="editMade(row)">Edit</a>]</td>
			</tr>
			</tbody>
		</table> 
        </div>
      </div>
      
      
      
      
      
    </div>
    
  </div><!-- mainpanel -->
  
  
  
</section>