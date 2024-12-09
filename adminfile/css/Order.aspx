<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="admin_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .img
        {
            background-image:url(img.jpeg);
        }
        .gv {
            margin-left: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="img">
        <br />
        <form id="form1" runat="server">
        <Center>
        <table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" class="gv" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="244px" Width="661px" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="aid" HeaderText="aid" SortExpression="aid" />
                    <asp:BoundField DataField="tid" HeaderText="Bill no" SortExpression="tid" />
                    <asp:BoundField DataField="mid" HeaderText="mid" SortExpression="mid" />
                    <asp:BoundField DataField="p_name" HeaderText="p_name" SortExpression="p_name" />
                    <asp:BoundField DataField="p_prize" HeaderText="p_prize" SortExpression="p_prize" />
                    <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lenskartConnectionString %>" SelectCommand="SELECT * FROM [cart]"></asp:SqlDataSource>
        </td>
        
        <td>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="245px" Width="690px" DataSourceID="SqlDataSource2">
                <Columns>
                    <%--<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />--%>
                    <asp:BoundField DataField="aid" HeaderText="aid" SortExpression="aid" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="mid" HeaderText="mid" SortExpression="mid" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="paymant" HeaderText="paymant" SortExpression="paymant" />
                    <asp:BoundField DataField="mnumber" HeaderText="mnumber" SortExpression="mnumber" />
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
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:lenskartConnectionString %>" SelectCommand="SELECT * FROM [checkout]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
    </Center>
            </form>
    <br /><br />
    </div>
</asp:Content>

