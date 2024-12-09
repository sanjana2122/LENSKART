<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage1.master" AutoEventWireup="true" CodeFile="show_product.aspx.cs" Inherits="admin_show_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .form
        {
            position:relative;
            margin-left:50px;
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
     <br />
        <form id="form1" runat="server">
            <Center>
            <div class="product-container2">
       <div class="ddl-container">
             <asp:Label ID="label1" runat="server" ForeColor="purple" Font-Size="Large" Text="Category Name :" ></asp:Label>&nbsp;&nbsp;
             <asp:DropDownList ID="ddl1" runat="server"  bordercolor="purple" Width="200px" Height="30px" DataSourceID="SqlDataSource1" DataTextField="main_cat" DataValueField="main_cat"></asp:DropDownList>
             <asp:Button ID="button1" runat="server" Text="Search" CssClass="search-btn" ForeColor="Purple" BorderColor="Purple" Font-Size="Large" BackColor="#e8bcf0" OnClick="button1_Click" />
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lenskartConnectionString %>" SelectCommand="SELECT [main_cat] FROM [category]"></asp:SqlDataSource>
           </div>
       </div>
                </Center>
        <br />
            <div class="form">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#3366CC" CellPadding="4" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderStyle="None" BorderWidth="1px" Height="746px" Width="1430px" >  
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <RowStyle BackColor="White" ForeColor="#003399" BorderColor="Black" BorderStyle="Solid" HorizontalAlign="Center" />


                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="true" ForeColor="#CCFF99" />
                <HeaderStyle BackColor="#003399" Font-Bold="true" ForeColor="#CCCCFF" BorderColor="Black" BorderStyle="Solid" HorizontalAlign="Center" />    
        <Columns>
                    <%--<asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />--%>
                    <asp:TemplateField HeaderText="Id" SortExpression="id">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("p_id") %>'></asp:Label>  
                    </ItemTemplate>  
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="p_name" HeaderText="p_name" SortExpression="p_name" />--%>
                    <asp:TemplateField HeaderText="Main_cat">
                                <ItemTemplate>
                                    <asp:Label ID="p_name_lbl" runat="server" Text='<%# Eval("main_cat") %>' ></asp:Label>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="p_qty" HeaderText="p_qty" SortExpression="p_qty" />--%>
                    <asp:TemplateField HeaderText="Sub_cat">
                                <ItemTemplate>
                                    <asp:Label ID="p_qty_lbl" runat="server" Text='<%# Eval("sub_cat") %>' ></asp:Label>
                                </ItemTemplate>         
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="p_rate" HeaderText="p_rate" SortExpression="p_rate" />--%>
                    <asp:TemplateField HeaderText="ProductName">
                                <ItemTemplate>
                                    <asp:Label ID="p_rate_lbl" runat="server" Text='<%# Eval("p_name") %>' ></asp:Label>
                                </ItemTemplate>       
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Details">
                                <ItemTemplate>
                                    <asp:Label ID="detail_lbl" runat="server" Text='<%# Eval("p_detail") %>' ></asp:Label>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="category_name" HeaderText="category_name" SortExpression="category_name" />--%>
                    <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label ID="category_lbl" runat="server" Text='<%# Eval("prize") %>' ></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="category_name" runat="server" Text='<%# Eval("prize") %>' ></asp:TextBox>
                                </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField >
                            <ItemTemplate>
                                <img src="product img/<%# Eval("p_image") %>" id="img1" alt="no image" width="100px" height="100px"/>
                                
                            </ItemTemplate>
                     </asp:TemplateField>
                    <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_delete" runat="server" Text="Delete" CssClass="delete-btn" CommandName="Delete" />
                        <asp:Button ID="btn_edit" runat="server" Text="Edit" CssClass="edit-btn" CommandName="Edit" />
                          
                    </ItemTemplate>  
                    <EditItemTemplate>
                        <asp:Button ID="btn_update" runat="server" Text="Update" CssClass="edit-btn" CommandName="Update"/>  
                        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CssClass="delete-btn" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                    </asp:TemplateField>
                    <%--<asp:CommandField ShowEditButton="true" ControlStyle-CssClass="edit-btn"   />
                    <asp:CommandField ShowDeleteButton="true" />--%>
                    
                </Columns>
                <%--<EditRowStyle BackColor="lightgray" ForeColor="black" Font-Bold="false" />--%>
                <%--<AlternatingRowStyle BackColor="White" ForeColor="#284775" />--%>
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
           </asp:GridView>
                </div>
            </form>
            <br /><br />
    </div>
</asp:Content>

