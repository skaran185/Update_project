<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" EnableViewState="false" EnableEventValidation="true" CompilationMode="Auto" Inherits="login" %>

<!Doctype html>
<html lang="en">
	<head>
	 <title>Project</title>
 	 <meta charset="utf-8">
  	 <meta name="viewport" content="width=device-width, initial-scale=1">
  	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="bootstrap/jquery-1.10.2.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>

 	 
 	 <style>
 	 body{margin-top: 30px;
 	 	background-color: lightblue;}
 	 .panel{background-color: lavender;

 	 	}


 	 </style>
  	</head>
 	<body background="images/VzjitE.jpg" >
 		<form id="form1" runat="server">
 		<div class="container-fluid">
 			<div class="row">
 				<div class="col-lg-3"></div>
 				<div class="col-lg-6">

 				<div class="panel panel-default">
 				
 						
 						
					<ul class="nav nav-tabs" >
					   <li class="active"><a data-toggle="tab" href="#home">SIGN UP</a></li>
					    <li><a data-toggle="tab" href="#menu1">LOGIN</a></li>
					</ul>

					  <div class="tab-content">
					    <div id="home" class="tab-pane fade in active">
					     <div class="panel panel-danger"><!--pannel for sign up start here-->
					       <div class="panel-heading"  style="text-align:center;font-family:Times New Roman"><h5><b><span class="glyphicon glyphicon-pencil"></span>&nbsp;SIGN UP</b></h5></div>
					       	<div class="panel-body">
						  
						        <!--form start here-->
							  <div class="form-group">
						      	<label for="name">Name:</label>
						      	
                                  
                                  <asp:TextBox runat="server" CssClass="form-control" ID="name" placeholder="Enter name"></asp:TextBox>
                                  <asp:RequiredFieldValidator runat="server" ValidationGroup="sign" ControlToValidate="name" ErrorMessage="Required"></asp:RequiredFieldValidator>
						      
                              </div>
								<div class="form-group">
							      <label for="email">Email:</label>
							      
							      <asp:TextBox runat="server" CssClass="form-control" ID="email" placeholder="Enter Email"></asp:TextBox>
                                  <asp:RequiredFieldValidator runat="server" ValidationGroup="sign" ControlToValidate="email" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </div>
								<div class="form-group">
							      <label for="address">Address:</label>
							      
							    <asp:TextBox runat="server" CssClass="form-control" ID="address" placeholder="Enter address"></asp:TextBox>
                                  <asp:RequiredFieldValidator runat="server" ValidationGroup="sign" ControlToValidate="address" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </div>
								<div class="form-group">
							      <label for="contactno">Contact no:</label>
							      
							    
                                    <asp:TextBox runat="server" CssClass="form-control" ID="contact" placeholder="Enter contact" MaxLength ="10"></asp:TextBox>
                                  <asp:RequiredFieldValidator runat="server" ValidationGroup="sign" ControlToValidate="contact" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </div>
							    <div class="form-group">
							      <label for="pwd">Password:</label>
							      
							    
                                    <asp:TextBox runat="server" CssClass="form-control" ID="password" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                                  <asp:RequiredFieldValidator ValidationGroup="sign" runat="server" ControlToValidate="password" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </div>
								

					    
					     		
                                   <asp:Button runat="server" ValidationGroup="sign" CssClass="form-control" ID="signup1" Text="Submit" OnClick="signup1_click" ></asp:Button>
                                 </br>
                                       <asp:Label runat ="server" CssClass ="form-control " ID="lbmsg" Visible="False"></asp:Label>

                                   <%--<script>
					    		function s()
					    		{location.href="0.html";}
					    		</script>--%>

					    	    <!--form end here-->	  
							</div>
					      </div>   
					    </div>
                         
                          <!--menu 1 end-->
					    <div id="menu1" class="tab-pane fade">
					     <div class="panel panel-danger"><!--pannel start here-->
					      <div class="panel-heading"  style="text-align:center;font-family:Times New Roman"><h5><b>  <span class="glyphicon glyphicon-lock"></span>&nbsp; LOGIN  </b></h5></div>
					      	<div class="panel-body">
						        <!--form start here-->
							    <div class="form-group">
							      <label for="email">Email:</label>
							      
                                    
							    <asp:TextBox runat="server" CssClass="form-control" ID="email1" placeholder="Enter email"></asp:TextBox>
                                  <asp:RequiredFieldValidator runat="server" ValidationGroup="login" ControlToValidate="email1" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                </div>
							    <div class="form-group">
							      <label for="pwd">Password:</label>
							      
							    <asp:TextBox runat="server" CssClass="form-control" ID="password1" placeholder="Enter password" TextMode ="Password"></asp:TextBox>
                                  <asp:RequiredFieldValidator runat="server" ValidationGroup="login" ControlToValidate ="password1" ErrorMessage="Required" ></asp:RequiredFieldValidator>
                                </div>
                                   
                                  <asp:Button runat="server" CssClass="form-control" ID="loginSt" Text ="Login" OnClick="login_click"></asp:Button>
					    		<%--<script>
					    		function home()
					    		{location.href="1.html";}
					    		</script>--%>
						 	</div><!--pannel body end here-->
					      </div><!--pannel end here-->
						 </div><!--menu 2 end-->
					  </div><!--tab content end-->
					</div>
						   
						   
					</div><!--signin sign up-->




				</div>
			</div>






 		</div>
 	    </form>
 	</body>
 </html>

