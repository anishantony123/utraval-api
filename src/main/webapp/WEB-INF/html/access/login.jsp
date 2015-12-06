<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="images/favicon.png" type="image/png">

  <title>Manage Your Task</title>

  <link href="resources/css/login/style.css" rel="stylesheet">

</head>

<!-- <body>

<h1>Login</h1>

<form class="entrypanel" id="loginForm" action="j_spring_security_check" method="post" novalidate="novalidate">
                    
                    <h3 class="nomargin">Sign In</h3><br/>
	             
                    
                    <div class="mb10">
                        <label class="control-label">Email Address</label>
                        <input type="text" class="form-control" id="j_username" name="j_username" value=""/>
                    </div>
                    
                    <div class="mb10">
                        <label class="control-label">Password</label>
                        <input type="password" class="form-control" id="j_password" name="j_password" value="" />
                    </div>                 
                   
                    <br />
                    
                    <button type="submit" class="btn btn-success btn-block">Sign In</button>    <br/> 
                    <label class="control-label">Dont have Account? <a ng-click="showSignUpClick()">Sign Up Here</a></label>
                </form>


</body> -->
<body>

    <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>Basic<span>POS</span></div>
		</div>
		<br>
		<!-- <div class="login"> -->
		<form class="login" id="loginForm" action="j_spring_security_check" method="post" novalidate="novalidate">
				<input type="text" placeholder="username" class="form-control" id="j_username" name="j_username"><br>
				<input type="password" placeholder="password" class="form-control" id="j_password" name="j_password"><br>
				<input type="submit" value="Login">
		</form>  
  </body>
</html>
