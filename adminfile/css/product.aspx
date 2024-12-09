<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 
        {
            width: 551px;
        }
        .form
        {
            position:relative;
            top: 0px;
            height: 430px;
            margin-left:200px;
        }
        .link
        {
            position:relative;
            right:230px;
            bottom:25px;
            color:red;
        }
         .img
        {
            background-image:url(img.jpeg);
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="img">
     <br /><br />
    <b>
        <div class="form">
   <form id="form1" runat="server">
       <center>
        <table border="0" align="center" bgcolor="white" style="box-shadow: 1px 3px 15px 10px; border-radius:10px 10px; width:700px; height:450px;" cellpadding="10" cellspacing="15" border-color="purple">
            <tr align="center">
                <td class="auto-style1" colspan="2"><font color="purple">UPLOAD NEW PRODUCT</font><div class="link"><a href="show_product.aspx"><font color="purple">Show Products</font></a></div></td>
            </tr>
            <tr align="center">
            <td class="auto-style1">
                <font color="purple">Choose Main Category:</font>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="178px" style="border-radius:7px 7px;" Font-Size="Medium" ForeColor="Purple" BackColor="White" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="main_cat" DataValueField="main_cat" >
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lenskartConnectionString %>" SelectCommand="SELECT [main_cat] FROM [category]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr align="center">
            <td class="auto-style1">
                
                <font color="purple">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Category Name:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" width="178px" BorderColor="Purple" style="border-radius:7px 7px;" BorderStyle="Solid"  Font-Size="Large" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter sub category" ForeColor="Purple" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
            </tr>
           
            <tr align="center">
            <td class="auto-style1">
                <font color="purple">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Product Name:</font>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="178px" BorderColor="purple" BorderStyle="Solid" style="border-radius:7px 7px;" Font-Size="Large"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Name" ForeColor="Purple" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td>
            </tr>
            <tr align="center">
                <td class="auto-style1">
                <font color="purple">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Product Details:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Width="178px" BorderColor="purple" BorderStyle="Solid" Font-Size="Large" style="border-radius:7px 7px;" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Detail" ForeColor="Purple" ControlToValidate="TextBox3"></asp:RequiredFieldValidator></td>
            </tr>
            <tr align="center">
                <td class="auto-style1">
                <font color="purple">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Product Price:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Width="178px" BorderColor="purple" BorderStyle="Solid" style="border-radius:7px 7px;" Font-Size="Large"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Price" ForeColor="Purple" ControlToValidate="TextBox3"></asp:RequiredFieldValidator></td>
            </tr>
           <tr align="center">
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="purple">Product Image:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" ForeColor="purple" BorderStyle="Solid" style="border-radius:7px 7px;" BorderColor="purple" /></td>
            </tr>
              <tr>
                  <td align="center" colspan="2" class="auto-style1"><asp:Button ID="Button1" runat="server" Text="Upload Now" style="border-radius:7px 7px;" BackColor="#e8bcf0" BorderColor="purple" BorderStyle="Solid" ForeColor="purple" Width="150px" OnClick="Button1_Click"></asp:Button><br /><br /></td>
              </tr>
        </table>
        </center>
    </form>
    <br /><br /><br />
            </div>
        </b>
        <br /><br /><br />
               </div>
</asp:Content>

