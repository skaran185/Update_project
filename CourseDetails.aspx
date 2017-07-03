<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeFile="CourseDetails.aspx.cs" Inherits="CourseDetails" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">


    <script>
        $(document).ready(function () {
            debugger

            //function saverateValue()
            // {
            //     debugger


            //}



            function saveData(s) {

                debugger
                var CourswUrlID = $(this).data("id")
                $.ajax({
                    type: "POST",
                    url: "CourseDetails.aspx/UpdateUrlRate",
                    data: '{name: "' + CourswUrlID + '" }',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (da) {
                    },
                    failure: function (response) {
                        alert(response.d);
                    }
                });






            }
            //        $("#urlAll").click(function (d) {
            //            debugger
            //            var CourswUrlID = $(this).data("id")
            //       $.ajax({
            //    type: "POST",
            //    url: "CourseDetails.aspx/UpdateUrlRate",
            //    data: '{name: "' +CourswUrlID+ '" }',
            //    contentType: "application/json; charset=utf-8",
            //    dataType: "json",
            //    success: function (da) {
            //    },
            //    failure: function(response) {
            //        alert(response.d);
            //    }
            //});




            //        })


        });
        function saveData(s) {

            debugger
            var CourswUrlID = s;
            $.ajax({
                type: "POST",
                url: "CourseDetails.aspx/UpdateUrlRate",
                data: '{name: "' + CourswUrlID + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (da) {
                },
                failure: function (response) {
                    alert(response.d);
                }
            });






        }
    </script>


    <%--     <div class="container">
            <h2>Course</h2>
            <p>Select which type of course you like:</p>
            <div class="btn-group nav-pills">
                <asp:Button runat="server" Width="300px" OnClick="video_click" CssClass="btn btn-primary" Text="Video" />
                <asp:Button runat="server" Width="300px" OnClick="pdf_click" CssClass="btn btn-primary" Text="PDF and Doc" />
                <asp:Button runat="server" Width="300px" OnClick="online_click" CssClass="btn btn-primary" Text="Online Course" />
            </div>
        </div>--%>
    <h2 class="text-center text-info" >
    <asp:Label CssClass="" runat="server" ID ="courseNAme"></asp:Label>
        </h2>
    <br />
    <br />
    <div class="container">

        <ul class="nav nav-tabs">
            <li class=""><a href="#"></a></li>
            <li>
                <asp:Button runat="server" Width="300px" OnClick="video_click" CssClass="btn btn-primary" Text="Video" /></li>
            <li>
                <asp:Button runat="server" Width="300px" OnClick="pdf_click" CssClass="btn btn-primary" Text="PDF and Doc" /></li>
            <li>
                <asp:Button runat="server" Width="300px" OnClick="online_click" CssClass="btn btn-primary" Text="Online Course" /></li>
        </ul>


    <br />
    <br />
    <br />

        <div class="text-center">
            <asp:Repeater ID="VideoRepeater" runat="server">
                <ItemTemplate>



                    <a href='<%# Eval("url") %>' data-id='<%# Eval("id") %>' onclick="saveData(<%#Eval("id") %>)" id="urlAll" class="form-control btn btn-md btn-success" target="_blank"><%# Eval("url") %>  ...       &nbsp  &nbsp &nbsp<i class="glyphicon glyphicon-star"></i>  <%#Eval("rate") %> <i class="glyphicon glyphicon-arrow-up"></i></a>
                    <br />
                    <br />
                </ItemTemplate>



            </asp:Repeater>
        </div>

    </div>

</asp:Content>
