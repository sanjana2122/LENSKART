<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="admin_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        
        .form
        {

            position:relative;
            margin-left:100px;
           
           
        }
        .link
        {
            position:relative;
            right:250px;
            bottom:25px;
           
        }
        .lbl
        {
            position:relative;
            bottom:112px;
            margin-left:1300px;
         
        }
        .img
        {
            background-image:url(img.jpeg);
        }
   </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="img">
    <br /><br /><br />
               <div class="form">
                   <b>
   <form id="form1" runat="server">
       <center>
            
        <table border="0" align="center" style="box-shadow:1px 3px 15px 10px; height:450px; width:800px; border-radius:10px 10px;" cellpadding="10" cellspacing="15">
            <tr align="center">
                <td class="auto-style1" colspan="2"><font color="purple">UPLOAD NEW CATEGORY</font><div class="link"><a href="show_cat.aspx"><font color="purple">Show Categorys</font></a></div></td>
            </tr>
            <tr align="center">
                <td><font color="purple">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Category Name :</font> &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt1" runat="server" style="border-radius:7px 7px;" Width="178px" BorderColor="purple" BorderStyle="Solid" Font-Size="Large"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Purple" Font-Bold="true" ControlToValidate="txt1" ErrorMessage="Enter category"></asp:RequiredFieldValidator></td>
            </tr>
              <tr>
                  <td align="center" colspan="2"><asp:Button ID="Button1" runat="server" style="border-radius:7px 7px;" Text="Upload Now" BackColor="#e8bcf0" BorderColor="purple" BorderStyle="Solid" ForeColor="purple" Width="150px" OnClick="Button1_Click"></asp:Button></td>
              </tr>
        </table>
        </center>        
    </form>
                       </b>
                </div>
    <br /><br /><br />
         </div>
</asp:Content>

