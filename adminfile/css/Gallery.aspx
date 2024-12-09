<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="admin_Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .form
        {
            position:relative;
            margin-left:150px;
        }
        .link
        {
            position:relative;
            right:300px;
            bottom:27px;
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
  <br />   <br /><br /><br /><br /><br />
    <b>
        <div class="form">
   <form id="form1" runat="server">
       <center>
        <table border="0" align="center" bgcolor="white" style="box-shadow: 1px 3px 15px 10px; border-radius:10px 10px; width:800px; height:268px;" cellpadding="10" cellspacing="15" border-color="purple">
            <tr align="center">
                <td class="auto-style1" colspan="2"><font color="purple">UPLOAD YOUR IMAGE HERE</font><div class="link"><a href="show_gallery.aspx"><font color="purple">Show Gallery Images</font></a></div></td>
            </tr>
            <tr align="center">
                <td><font color="purple">Upload Your Image:</font>
                    <asp:FileUpload ID="FileUpload1" runat="server" style="border-radius:7px 7px;" ForeColor="purple" BorderStyle="Solid" BorderColor="purple" Font-Size="Large" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Upload Image" ControlToValidate="FileUpload1" ForeColor="Purple"></asp:RequiredFieldValidator>
                </td>
            </tr>
              <tr>
                  <td align="center" colspan="2"><asp:Button ID="Button1" style="border-radius:7px 7px;" runat="server" Text="Upload Now" BackColor="#e8bcf0" BorderColor="purple" BorderStyle="Solid" ForeColor="purple" Width="150px" OnClick="Button1_Click"></asp:Button></td>
              </tr>
            <tr>
                <td align="center" colspan="2"><asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label><br /></td>
            </tr>
        </table>
        </center>
    </form>
            </div>
        </b>
    <br /><br /><br /><br /><br /><br /><br />
    </div>
</asp:Content>

