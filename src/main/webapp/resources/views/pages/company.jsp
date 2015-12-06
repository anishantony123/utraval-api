<section ng-controller="CompanyController">
  
  <div class="leftpanel">
    
    
    <logo-panel></logo-panel>
    <div class="leftpanelinner">

      <pos-menu></pos-menu>
 
    </div>
  </div>
  
  <div class="mainpanel">
    
    <pos-header></pos-header>
        
    <div class="pageheader">
      <h2> Company </h2>
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
                    <label class="control-label">Company Code</label>
                    <input type="text" name="groupcode" class="form-control" ng-model="newEntry.companyCode" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Company Name</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.companyName" />
                  </div>
                </div><!-- col-sm-6 -->
                
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Sale %</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.sale" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Purchase %</label>
                    <input type="text" name="groupname" class="form-control" ng-model="newEntry.purchase" />
                  </div>
                </div><!-- col-sm-6 -->
              </div><!-- row -->
              <div class="row">
              <div class="col-sm-3">
                 <div class="button-manage-panel">
                 <button class="btn btn-primary" ng-click="saveCompany(newEntry)">Save</button>
                 <button class="btn btn-primary" ng-click="clearCompany()">Cancel</button>
                 </div>
                </div><!-- col-sm-6 -->
              </div>
        </div>
      </div>
      
      <div class="panel panel-default">
        <div class="panel-body">
        <table st-safe-src="companyList" st-table="displaycompanyList"  class="table table-striped">
			<thead>
			<tr>
				<th st-sort="companyCode">Company Code</th>
				<th st-sort="companyName">Company Name</th>
				<th st-sort="sale">Sale</th>
				<th st-sort="purchase">Purchase</th>
				<th>Actions</th>
			</tr>
			<tr>
				<th>
					<input st-search="companyCode" placeholder="Company Code" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="companyName" placeholder="Company Name" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="sale" placeholder="Sale" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="purchase" placeholder="Purchase" class="input-sm form-control" type="search"/>
				</th>
				<th>
				</th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="row in displayAccountHead">
				<td>{{row.companyCode | uppercase}}</td>
				<td>{{row.companyName | uppercase}}</td>
				<td>{{row.sale | uppercase}}</td>
				<td>{{row.purchase | uppercase}}</td>
				<td>[<a ng-click="deleteCompany(row)">Delete</a>] [<a ng-click="editCompany(row)">Edit</a>]</td>
			</tr>
			</tbody>
		</table> 
        </div>
      </div>
      
      
      
      
      
    </div>
    
  </div><!-- mainpanel -->
  
  
  
</section>