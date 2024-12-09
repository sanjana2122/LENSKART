<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<head>

</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!-- Contact Section -->

<!-- Contact Section -->
 
<div id="contact" class="text-center">
  <div class="container">
    <div class="section-title center">
      <h2>Contect Us</h2>
      <hr />
    </div>
    <div class="col-md-8 col-md-offset-2">
      <form name="sentMessage" id="contactForm">
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Name" class="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Purple" Font-Bold="true" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"  class="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Purple" Font-Bold="true" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
              <p class="help-block text-danger"></p>
            </div>
          </div>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Message" class="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Purple" Font-Bold="true" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
          <p class="help-block text-danger"></p>
        </div>
        <div id="success"></div>
        <asp:Button ID="btn" runat="server" Text="submit" class="btn btn-custom btn-lg" OnClick="btn_Click" />
      </form>
     
    </div>
  </div>
</div>
</asp:Content>

