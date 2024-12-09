<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <div class="text-center">
    <div class="container">
    <div class="section-title center">
      <h2>checkout</h2>
      <hr />
    </div>
        </div>
       </div> 
    <br /><br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="253px" Width="759px" DataSourceID="SqlDataSource1">
        </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lenskartConnectionString %>" SelectCommand="SELECT * FROM [cart] WHERE ([mid] = @mid)">
                 <SelectParameters>
                     <asp:Parameter Name="mid" Type="String" />
                 </SelectParameters>
    </asp:SqlDataSource>
                
        <table align="center" border="1" cellspacing="14" cellpadding="12" style="width: 50%; height:500px; border:double; border-color:purple;">
          <tr>
			<th> <h3 align="center" style="font-size: 1.3em; color:orange;">Fill Up Details To Deliver Your Item</h3> </th>
		<b>
            </tr>
            <tr>
            
                <td><center><asp:Label ID="g2" runat="server" ForeColor="purple"></asp:Label></center></td>
            </tr>
			    <tr align="center">

			    	<td style="color:purple">  Enter your name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your Name" style="width: 50%; padding: 10px; color:green;"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name" ControlToValidate="TextBox1" ForeColor="green"></asp:RequiredFieldValidator>
			    	</td>	
			    </tr>

			    <tr align="center">
			    	<td style="color:purple">   Enter Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your Address" TextMode="MultiLine" style="width: 50%; padding: 10px; color:green;"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Address" ControlToValidate="TextBox2" ForeColor="green"></asp:RequiredFieldValidator></td>
			    </tr>

			    <tr align="center">
			    	<td style="color:purple">   Payment Method:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="344px">
                        <asp:ListItem>Select Payment Method</asp:ListItem>
                        <asp:ListItem>Cash on Delivery</asp:ListItem>
                        <asp:ListItem>Online Payment</asp:ListItem>
                        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Your Method" ControlToValidate="DropDownList1" ForeColor="green"></asp:RequiredFieldValidator>
			        </td>
			    </tr>

                <tr align="center">
                	<td style="color:purple"> Enter Phone Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Phone Number"  style="width: 50%; padding: 10px; color:green;"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Your Mobileno" ControlToValidate="TextBox4" ForeColor="green"></asp:RequiredFieldValidator></td>
                </tr>	

                <tr align="center">
                	<td colspan="4" ><asp:Button ID="Button1" runat="server" Text="Confirm Order" class="btn btn-custom btn-lg" style="height: 50px; padding: 10px; width: 30%;" OnClick="Button1_Click"></asp:Button></td>
                	
                </tr>
            
                		    </table>
           
        </center>
		            <br />
</asp:Content>

