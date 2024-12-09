<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thanks.aspx.cs" Inherits="thanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .font
        {
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
     <div class="text-center">
    <div class="container">
    <div class="section-title center">
      <h2> Your Order Information</h2>
      <hr />
    </div>
        </div>
       </div> 
    <div class="g1">
   <center> <asp:GridView CssClass="cs1" ID="gd1" runat="server" style="margin-left: 0px" Width="753px" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" DataSourceID="SqlDataSource1" Height="211px">
       <Columns>
           <asp:BoundField DataField="mid" HeaderText="mid" SortExpression="mid" />
           <asp:BoundField DataField="p_name" HeaderText="p_name" SortExpression="p_name" />
           <asp:BoundField DataField="p_prize" HeaderText="p_prize" SortExpression="p_prize" />
           <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
           <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
       </Columns>
       <EditRowStyle Height="40px" Width="20px" BorderColor="#FFFFCC" />
       <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
       <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
       <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
       <RowStyle CssClass="height:20px" BackColor="White" ForeColor="#003399" />
       <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
       <SortedAscendingCellStyle BackColor="#EDF6F6" />
       <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
       <SortedDescendingCellStyle BackColor="#D6DFDF" />
       <SortedDescendingHeaderStyle BackColor="#002876" />
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lenskartConnectionString %>" SelectCommand="SELECT [mid], [p_name], [p_prize], [qty], [total] FROM [cart]"></asp:SqlDataSource>
        </center>
    </div>
       <div>
        <h3><b><center><font color="#C54DAA">
        THANK YOU FOR SHOPPING US</font></center></b></h3>
         </div>  
    <br />
</asp:Content>

