<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .gv
        {
            position:relative;
           
        }
        .mydatagrid
        {
            width: 80%;
            border: solid 2px black;
            min-width: 80%;
        }
        .header1
        {
            background-color: #000;
            font-family: Arial;
            color: White;
            height: 25px;
            text-align: center; 
            font-size: 16px;
         }
        .rows
        {
            background-color: #fff;
            font-family: Arial;
            font-size: 14px;
            color: #000;
            min-height: 25px;
            text-align: left;
        }
        .rows:hover
        {
            background-color:purple;
            color: #fff;
        }

        .mydatagrid a /** FOR THE PAGING ICONS **/
        {
            background-color: Transparent;
            padding: 5px 5px 5px 5px;
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }

        .mydatagrid a:hover /** FOR THE PAGING ICONS HOVER STYLES**/
        {
            background-color: #000;
            color: #fff;
        }
        .mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
        {
            background-color: #fff;
            color: #000;
            padding: 5px 5px 5px 5px;
        }
        .pager
        {
            background-color:#000;
            font-family: Arial;
            color: White;
            height: 30px;
            text-align: left;
        }   
        .mydatagrid td
        {
            padding: 5px;
        }
        .mydatagrid th 
        {
            padding: 5px;
        }
        .edit-btn
        {
            background-color:purple;
            color:black;
            font-size:17px;
            
        }
        .edit-btn:hover
        {
            background-color:orange;
        }
        .delete-btn
        {
             background-color:purple;
            color:black;
            font-size:17px;
        }
        .delete-btn:hover
        {
            background-color:orange;
        }
        .b
        {
           margin-left:700px;
         
          
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br /><br />
    <center><h1>Cart</h1>
             <div class="gv">
                <div>
            <asp:GridView runat="server" ID="GridView1"  HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header1" 
                RowStyle-CssClass="rows" AutoGenerateColumns="False" Width="388px" ShowFooter="True" OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound">
               <Columns>
                    <asp:TemplateField HeaderText="Product Id" SortExpression="id">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("bid") %>'></asp:Label>  
                    </ItemTemplate>  
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Bill no">
                                <ItemTemplate>
                                    <asp:Label ID="tid" runat="server" Text='<%# Eval("tid") %>' ></asp:Label>
                                </ItemTemplate>
                                
                    </asp:TemplateField>
                   <asp:TemplateField HeaderText="Mid">
                                <ItemTemplate>
                                    <asp:Label ID="m_id" runat="server" Text='<%# Eval("mid") %>' ></asp:Label>
                                </ItemTemplate>
                                
                    </asp:TemplateField>
                   <asp:TemplateField HeaderText="Product Name">
                                <ItemTemplate>
                                    <asp:Label ID="name" runat="server" Text='<%# Eval("p_name") %>' ></asp:Label>
                                </ItemTemplate>
                    </asp:TemplateField>
                   <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label ID="price" runat="server" Text='<%# Eval("p_prize") %>' ></asp:Label>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Qty">
                                <ItemTemplate>
                                    <asp:Label ID="p_qty_lbl" runat="server" TextMode="Number" Width="50px"  Text='<%# Eval("qty") %>'></asp:Label>
<%--                                    <asp:Button ID="update" runat="server" Text="update" BorderStyle="Groove" BackColor="lightblue" OnClick="update_Click" />--%>
                                </ItemTemplate>
                               <EditItemTemplate>
                                   <asp:TextBox ID="p_qty_txt" runat="server" TextMode="Number" min="1" Width="50px" Text='<%# Eval("qty") %>'></asp:TextBox>
                               </EditItemTemplate>
                                
                                <ItemStyle HorizontalAlign="Center" />
                                
                    </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Total">
                                <ItemTemplate>
                                    <asp:Label ID="subtotal_lbl" runat="server" Text="" ></asp:Label>
                                </ItemTemplate>
                                
                                <ItemStyle HorizontalAlign="Center" />
                                
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action" HeaderStyle-Width="170px">  
                    <ItemTemplate>  
                            <asp:Button ID="btn_edit" runat="server" Text="Edit" CssClass="edit-btn" CommandName="Edit" />
                            <asp:Button ID="btn_delete" runat="server" Text="Remove" CssClass="delete-btn" CommandName="Delete" />  
                    </ItemTemplate>  
                     <EditItemTemplate>  
                        <asp:Button ID="btn_update" runat="server" Text="Update" CssClass="edit-btn" CommandName="Update"/>  
                        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CssClass="delete-btn" CommandName="Cancel"/>  
                    </EditItemTemplate>
                    </asp:TemplateField>
                    
                </Columns> 
            </asp:GridView>
                    <br />
                    <br />
                    <div class="b">
        <asp:Button ID="rmvall" runat="server" CssClass="edit-btn" Text="Remove All" OnClick="rmvall_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ckoutbtn" runat="server" CssClass="edit-btn" Text="Checkout" OnClick="ckoutbtn_Click" />
       </div>
        </div>
                    </div>
                </center>
        <br />
</asp:Content>

