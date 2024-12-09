<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"  EnableEventValidation="false" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

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
     <div class="form">
    
        <div id="contact" class="text-center">
    <div class="container">
    <div class="section-title center">
      <h2>Signin</h2>
      <hr />
    </div>
      <div class="form">
    <div class="col-md-8 col-md-offset-2">
      <form name="sentMessage">
        <div class="row">
             <div class="col-md-10">
              <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your Name"  class="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Email" Font-Bold="true" ForeColor="Purple" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
              <div class="help-block text-danger"></div>
            </div>
          </div>
            <div class="col-md-10">
              <div class="form-group">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your Mobileno"  class="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Mobileno" Font-Bold="true" ForeColor="Purple" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
              <div class="help-block text-danger"></div>
            </div>
          </div>
           <div class="col-md-10">
              <div class="form-group">
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Your Email"  class="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Your Mobileno" Font-Bold="true" ForeColor="Purple" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
              <div class="help-block text-danger"></div>
            </div>
          </div>
            <div class="col-md-10">
              <div class="form-group">
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Your Password"  class="form-control"></asp:TextBox>
              <div class="help-block text-danger"></div>
            </div>
          </div>
            <div class="col-md-10">
              <div class="form-group">
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Your Cnform password"  class="form-control"></asp:TextBox>
              <div class="help-block text-danger"></div>
            </div>
          </div>

       </div>
        <div id="success"></div>
          <div class="button">
        <asp:Button ID="btn" runat="server" Text="submit" class="btn btn-custom btn-lg" OnClick="btn_Click" />
              </div>
          </form>
          </div>
          </div>
        </div>
        </div>
         </div>
   
</asp:Content>

