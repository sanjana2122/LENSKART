<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
        .auto-style1 {
            width: 520px;
            text-align: center;
            color:purple;
        }
        .auto-style2 {
            width: 1200px;
            height:500px;
        }
        .auto-style4 {
            height: 81px;
        }
        .auto-style5 {
            height: 91px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br /><br />
    <Center>
        <h1>Product Detail</h1>
     <table align="center" style=" font-size:14px;
	font-weight:bold; 
	padding-left:0%; border:double; border-color:purple;
	margin:0; background-color:white;">
         
        <tr>
            <td align="center" colspan="4" rowspan="1">
               <td align="center" rowspan="4">
                <asp:Image ID="Image1" runat="server" style="height:300px" Width="300px" /> </td>
                </td>
        </tr>
        <tr>
           
            <td class="style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name:</td>
            <td class="auto-style1">
                <asp:Label ID="lblnm" runat="server" ></asp:Label></td>
        </tr>
        <tr>
            <td class="style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price:</td>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" ></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qty:</td>
            <td class="auto-style1">
                <asp:DropDownList ID="D1" runat="server" AutoPostBack="True" >
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                </asp:DropDownList>
                
                  </td>
        </tr>

            <tr>
                   <td class="style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Details:</td> 
                   <td align="justify" class="auto-style1">
                       <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>  </td>
            </tr>
          
        <tr><td></td> <td colspan="2" align="center"> 
            <asp:Button ID="btn1" runat="server" Text="Add Cart" class="btn btn-custom btn-lg" Width="130px" Height="50px" OnClick="btn1_Click" /><br /><br />
            
</td>
        </tr>
    </table>
        </Center>
    <br /><br />
</asp:Content>

