<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .form
        {
            position:relative;
            margin-left:100px;
            color:purple;
        }
         .button
        {
            margin-right:150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br /><br />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
    <div class="form">
    
        <div id="contact" class="text-center">
    <div class="container">
    <div class="section-title center">
      <h2>Login</h2>
      <hr />
    </div>
      <div class="form">
    <div class="col-md-8 col-md-offset-2">
      <form name="sentMessage">
        <div class="row">
             <div class="col-md-10">
              <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your Email"  class="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Email" Font-Bold="true" ForeColor="Purple" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
              <div class="help-block text-danger"></div>
            </div>
          </div>
            <div class="col-md-10">
              <div class="form-group">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your password"  class="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Password" Font-Bold="true" ForeColor="Purple" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
              <div class="help-block text-danger"></div>
            </div>
          </div>
           
       </div>
        <div id="success"></div>
          <div class="button">
        <asp:Button ID="btn" runat="server" Text="submit" class="btn btn-custom btn-lg" OnClick="btn_Click" />
              </div>
           <div class="col-md-8">
                                <br />
                                If User cannot be Register&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="register.aspx"><font color="blue">Click to Register</font></a>
                                  <br />
        
                            </div>
      </form>
     
    </div>
  </div>
</div>
      </div>
        
        </div>
    <br />
</asp:Content>

