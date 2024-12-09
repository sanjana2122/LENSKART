<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
     <!-- About Section -->
<div id="about">
  <div class="container">
    <div class="section-title text-center center">
      <h2>About Us</h2>
      <hr />
    </div>
    <div class="row">
      <div class="col-xs-12 col-md-6"> <img src="img/about.jpeg" class="img-responsive" alt=""> </div>
      <div class="col-xs-12 col-md-6">
        <div class="about-text">
          <b><p>Lenskart Jamnagar eyewear store is located at Jamnagar. It is one of the best optical stores in Jamnagar with immense number of Eyeglasses , sunglasses & contact lens options to choose from. The store offers free eye check up to its customers which is performed by certified Optometrist. The free eye test service is available across all stores in India. If you are searching for the best optician near you then Lenskart Jamnagar is the perfect choice for you. The address of this store is Ward No 12, City Survey No 676, Sheet No 161, Keshav Complex, Opposite Dhanvantri Ground, P N Marg, Jamnager, Gujarat, 361008, Jamnagar, Jamnagar, Gujarat - 361008. </p></b>
        </div>
      </div>
    </div>
  </div>
</div>

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

        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="2" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
        <ItemTemplate>
            <table border="0">
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;
                    </td><br />  
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

