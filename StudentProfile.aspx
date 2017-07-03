<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeFile="StudentProfile.aspx.cs" Inherits="StudentProfile" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <b><center><h2  style="color:white;"> User Profile</center></h2></b>

    <div class="container" style="margin-top: 8%;">




        <div style="width: 50%;background-color: rgb(192, 182, 202);border-radius:5px;margin-left:25%;">
           <h4>Name:</h4> 
                  <asp:Label runat="server" CssClass="form-control " ID="Label1" ></asp:Label><br />
        

       
           <h4> Email:</h4> 
                  <asp:Label runat="server" CssClass="form-control " ID="Label2"></asp:Label><br />
        



       
            <h4> Contact No.: </h4> 
                  <asp:Label runat="server" CssClass="form-control " ID="Label3"></asp:Label><br />
       



       
           <h4>  Address: </h4> 
                  <asp:Label runat="server" CssClass="form-control " ID="Label4"></asp:Label><br />
       
    </div>

</div>
</asp:Content>





