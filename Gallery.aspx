<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
<head>
    <style>
            .glasses
            {
                border:solid 4px;
	            border-radius: 3px;
                border-color:purple;
                
            }
        </style>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <!-- gallery Section -->
    <div class="text-center">
    <div class="container">
    <div class="section-title center">
      <h2>gallery</h2>
      <hr />
    </div>
        </div>
       </div> 
    
    <center>

        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="2">
        <ItemTemplate>
            <table border="0">
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;
                    </td><br /><br />   
                    <td>
                        <div class="glasses">
                             <img src="admin/image/<%#Eval("image") %>" style="width:250px; height:250px"/>
                        </div>
                    </td>
                </tr>
            </table>
        </ItemTemplate>

        </asp:DataList>

   


        
        </center>
    <br /><br />
    
   
</asp:Content>

