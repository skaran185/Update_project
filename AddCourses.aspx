<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCourses.aspx.cs" Inherits="AddCourses" %>

<!Doctype html>
<html lang="en">
<head>
    <title>Project</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
        <script src="bootstrap/jquery-1.10.2.min.js"></script>

    <script src="bootstrap/jquery-1.10.2.min.js"></script>
    <style>
        body {
            margin-top: 30px;
            background-color: lightblue;
        }

        .panel {
            background-color: lavender;
        }
    </style>
</head>
<body background="images/VzjitE.jpg">
<div><nav class="navbar navbar-inverse navbar-fixed-top">
 			<div class="container-fluid">
 				
 			

 				<ul class="nav navbar-nav navbar-right">
                     
 					<li><a href="login.aspx" >Signout</a></li>
 				</ul>
 				<form class="navbar-form navbar-left" >
				  <asp:Label runat ="server" ForeColor="white" ID="Label5" ></asp:Label>
				      
				    
				 
				</form>
			</div>
 		</nav>
    

    </div>


    
 		<div class="container" style="margin-top:5%;">
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">

                    <div class="panel panel-default">





                        <div class="tab-content">
                            <div id="home" class="tab-pane fade in active">
                                <div class="panel panel-danger">
                                    <!--pannel for sign up start here-->
                                    <div class="panel-heading" style="text-align: center; font-family: Times New Roman">
                                        <h5><b><span class="glyphicon glyphicon-pencil"></span>&nbsp; Course </b></h5>
                                    </div>
                                    <div class="panel-body">

                                        <!--form start here-->
                                        <div class="form-group">
                                            <label for="">Course</label>
                                            <asp:DropDownList ID="type" runat="server" AutoPostBack="True" CssClass="form-control" >
                                                <asp:ListItem Value="0">-- Select your Course--</asp:ListItem>
                                                <asp:ListItem Value="1">BOOTSTRAP</asp:ListItem>
                                                <asp:ListItem Value="2">HTML</asp:ListItem>
                                                <asp:ListItem Value="3">CSS</asp:ListItem>
                                                <asp:ListItem Value="4">C#</asp:ListItem>
                                                <asp:ListItem Value="5">JAVA</asp:ListItem>
                                                <asp:ListItem Value="6">ANDROID</asp:ListItem>

                                                
                                            </asp:DropDownList>

                                        </div>
                                        <div class="form-group">
                                            <label for="">Course Type</label>


                                              <asp:DropDownList ID="TYPE1" runat="server" AutoPostBack="True" CssClass="form-control" >
                                                <asp:ListItem Value="0">-- Select your Type--</asp:ListItem>
                                                <asp:ListItem value="1">Video Tutorial</asp:ListItem>
                                                <asp:ListItem value="2">Online Course </asp:ListItem>
                                                <asp:ListItem value="3">PDF Doc</asp:ListItem>
                                            </asp:DropDownList>
                                          
                                        </div>
                                        <div class="form-group">
                                            <label for="address">URL:</label>

                                            <asp:TextBox TextMode="Url" runat="server" CssClass="form-control" ID="URL" placeholder="Enter URL"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ValidationGroup="course" ControlToValidate="URL" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                        </div>





                                        <asp:Button runat="server" ValidationGroup="course" CssClass="form-control" ID="add" Text="Submit" OnClick="add_Click"></asp:Button>
                                        <br />

                                        <asp:Label runat ="server" CssClass ="form-control " ID="lbmsg" Visible="False"></asp:Label>

                                        <%--<script>
					    		function s()
					    		{location.href="0.html";}
					    		</script>--%>

                                        <!--form end here-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
             </div>
</body>
</html>
