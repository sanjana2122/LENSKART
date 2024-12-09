<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="admin_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         .form
        {
            position:relative;
            margin-left:150px;
        }
        .img
        {
            background-image:url(img.jpeg);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="img">
        <div class="form">
    <form id="form1" runat="server">
        <center>
            <br /><br /><br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" OnRowDeleting="GridView1_RowDeleting" Width="1200px" Height="223px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField HeaderText="Id" DataField="id" />
                <asp:BoundField HeaderText="Name" DataField="name" />
                <asp:BoundField HeaderText="Email" DataField="Email" />
                <asp:BoundField HeaderText="mobileno" DataField="mobileno" />
                <asp:BoundField HeaderText="feedback" DataField="feedback" />
                 <asp:CommandField ShowDeleteButton="true" HeaderText="Delete" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
            
        </asp:GridView>
            
            </center>
        
    </form>
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        </div>
        </div>
   
</asp:Content>

