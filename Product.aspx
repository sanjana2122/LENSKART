<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
<head>
        <style>
            .glasses
            {
                position:relative;
                border:solid 2px;
	            border-radius: 3px;
                left:8px;
                border-color:purple;
            }
        </style>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
   <!-- Our  Glasses section -->
    <div class="text-center">
    <div class="container">
    <div class="section-title center">
      <h2>product</h2>
      <hr />
    </div>
        </div>
       </div> 
  <br />
   
    <div class="clearfix"></div>
<center>
   
  <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" CellPadding="2" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand">
     
        <ItemTemplate>
             <div class="col-md-19">
                        <div class="row">
                            <div class="col-lg-12 col-sm-6 mb-4">
                                <div class="bg-white p-2 shadow-md">
                                   <div class="text-center">
                                       <div class="glasses">
                                     
                                            <img src="admin/product img/<%#Eval("p_image") %>"  style="width:200px; height:220px"/>
                                            
                                      
                                    <div class="detail p-2">
                                              
                                        <h4 class="mb-1 fs-5 fw-bold"><%#Eval("p_name") %></h4></b>
                                        <b class="fs-4 text-danger">₹<%#Eval("prize") %></b><ul class="mt-0 vgth">
                                            <li class="fs-8">
                                                <i class="bi text-warning bi-star-fill"></i>
                                                <i class="bi text-warning bi-star-fill"></i>
                                                <i class="bi text-warning bi-star-fill"></i>
                                                <i class="bi text-warning bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                            </li>
                                            <li class="float-end gvi">
                                                <i class="bi text-danger bi-heart-fill"></i>
                                            </li>
                                        </ul>
                                        <center>
                                        <div class="row pt-2">
                                           <div class="col-md-13">
                                            <asp:LinkButton ID="btn1" runat="server" CommandArgument='<%# Eval("p_name") %>' Text="More Detail" class="btn btn-custom btn-lg"></asp:LinkButton>
                                            
                                            </div>
                                            
                                        </div>
                                            </center>
                                        <br />
                                   
                                          </div>
                                </div>
                            </div>
                           </div>
                            </div>
                       </div>
        </ItemTemplate>
            </asp:DataList>
        
        </center>
    <br />
 
</asp:Content>

