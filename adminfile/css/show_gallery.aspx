<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="show_gallery.aspx.cs" Inherits="admin_show_gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .form
        {
            position:relative;
            margin-left:100px;
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
    <form id="form1" runat="server">
        <Center>
        <div class="col-lg-14" style="margin-top:20px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" Height="284px" Width="942px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" />
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                <img src="image/<%#Eval("image") %>" style="width:200px; height:200px"/>
                </ItemTemplate>
                </asp:TemplateField>
                
                <asp:CommandField ShowDeleteButton="true" HeaderText="Delete" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </div>
            <br /><br /><br /><br />
            <br /><br /><br />
          
            </Center>
    </form>
     </div>
    <br />
    <br />
        </div>
</asp:Content>

