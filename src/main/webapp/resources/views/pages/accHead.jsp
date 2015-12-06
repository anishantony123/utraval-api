<section ng-controller="AccountHeadController">
  
  <div class="leftpanel">
    
    
    <logo-panel></logo-panel>
    <div class="leftpanelinner">

      <pos-menu></pos-menu>
 
    </div>
  </div>
  
  <div class="mainpanel">
    
    <pos-header></pos-header>
        
    <div class="pageheader">
      <h2> Account Head </h2>
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
          <h4 class="panel-title">Account Head</h4>
        </div>
        <div class="panel-body">
          <div class="row">
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Account Code</label>
                    <input type="text" name="accountcode" class="form-control" ng-model="newEntry.accCode" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Account Name</label>
                    <input type="text" name="accountname" class="form-control" ng-model="newEntry.accName" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Account Sub Group</label>
                    <!-- <input type="text" name="accountsubgroup" class="form-control" ng-model="newEntry.accSubGroup" /> -->
                    <ui-select ng-model="newEntry.accSubGroup" theme="selectize" ng-disabled="disabled" >
				    <ui-select-match placeholder="Select Account Type">{{$select.selected.grpName}}</ui-select-match>
				    <ui-select-choices repeat="accSubGroup in accountSubGroupList | filter: $select.search">
				      <span ng-bind-html="accSubGroup.grpName | highlight: $select.search"></span>
				    </ui-select-choices>
				  </ui-select>
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                <label class="control-label">Account Type</label>
                  <ui-select ng-model="newEntry.accType" theme="selectize" ng-disabled="disabled" >
				    <ui-select-match placeholder="Select Account Type">{{$select.selected.typeName}}</ui-select-match>
				    <ui-select-choices repeat="accType in accountTypeList | filter: $select.search">
				      <span ng-bind-html="accType.typeName | highlight: $select.search"></span>
				    </ui-select-choices>
				  </ui-select>
                </div>
                 
              </div><!-- row -->
              
              <div class="row">
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Address</label>
                    <input type="text" name="address" class="form-control" ng-model="newEntry.address" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                   <label class="control-label">Sub Location</label>
                    <input type="text" name="sublocation" class="form-control" ng-model="newEntry.subLoc" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Phone</label>
                    <input type="text" name="phone" class="form-control" ng-model="newEntry.phone" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                <label class="control-label">Mobile No</label>
                  <input type="text" name="mobileno" class="form-control" ng-model="newEntry.mobNo" />
                </div>
                 
              </div><!-- row -->
              
              <div class="row">
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Reg No</label>
                    <input type="text" name="regNO" class="form-control" ng-model="newEntry.regNo" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Fax</label>
                    <input type="text" name="fax" class="form-control" ng-model="newEntry.fax" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Email</label>
                    <input type="text" name="email" class="form-control" ng-model="newEntry.email" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                <label class="control-label">Salesman</label>
                  <input type="text" name="salesman" class="form-control" ng-model="newEntry.salesman" />
                </div>
                 
              </div><!-- row -->
              <div class="row">
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">No of Credit Days</label>
                    <input type="text" name="creditdays" class="form-control" ng-model="newEntry.noCreditDays" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  
                </div><!-- col-sm-6 -->
                <div class="col-sm-3">
                  
                </div><!-- col-sm-6 -->
                <div class="col-sm-2">
                <button class="btn btn-primary" ng-click="saveAHead(newEntry)">Save</button>
                 <button class="btn btn-primary" ng-click="clearAHead()">Cancel</button>
                </div>
                 
              </div><!-- row -->
        </div>
      </div>
      
      <div class="panel panel-default">
       
        <div class="panel-body">
         <table st-safe-src="accountHeadList" st-table="displayAccountHead"  class="table table-striped">
			<thead>
			<tr>
				<th st-sort="accCode">Account Code</th>
				<th st-sort="accName">Account Name</th>
				<th st-sort="accSubGroup.grpName">Account Subgroup</th>
				<th st-sort="accType.typeName">Account Type</th>
				<th>Actions</th>
			</tr>
			<tr>
				<th>
					<input st-search="accCode" placeholder="Subgroup Code" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="accName" placeholder="Subgroup Name" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="accSubGroup.grpName" placeholder="Group Name" class="input-sm form-control" type="search"/>
				</th>
				
				<th>
					<input st-search="accType.typeName" placeholder="Group Name" class="input-sm form-control" type="search"/>
				</th>
				<th>
				</th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="row in displayAccountHead">
				<td>{{row.accCode | uppercase}}</td>
				<td>{{row.accName | uppercase}}</td>
				<td>{{row.accSubGroup | uppercase}}</td>
				<td>{{row.accType | uppercase}}</td>
				<td>[<a ng-click="deleteAccHead(row)">Delete</a>] [<a ng-click="editAccHead(row)">Edit</a>]</td>
			</tr>
			</tbody>
		</table> 
        </div>
      </div>
      
      
      
      
      
    </div>
    
  </div><!-- mainpanel -->
  
  
  
</section>