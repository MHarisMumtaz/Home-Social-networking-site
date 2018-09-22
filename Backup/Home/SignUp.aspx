<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="~/SignUp.aspx.cs" Inherits="Home.SignUp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        
        .signupbox
        {
             margin-top: 100px;
            -webkit-box-shadow: 1px 1px 2px #333333;
	        box-shadow: 1px 1px 4px #333333;
	        width: 1162px;
            height: 623px;
            margin-left: 49px;
            margin-top: 106px;
            float:left;
            background-color: #017869;
            border-radius:20px;
	        
        }
        .style5
        {
            width: 539px;
            height: 530px;
            margin-left: 36px;
            margin-top: 30px;
        }
        .style7
        {
            height: 36px;
            width:260px;
            padding-left:10px;
        }
        .style8
        {
            width: 272px;
            padding-left: 13px;
        }
        .style9
        {
            width: 272px;
            height: 42px;
        }
        .style10
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-left: 14px;
            margin-top: 1px;
            border-radius:5px;
            -webkit-box-shadow: 1px 1px 2px #333333;
	        box-shadow: 1px 1px 2px #333333;
           
        }
        .style15
        {
            margin-left: 14px;
            margin-top: 2px;
            height: 47px;
            width: 272px;
        }
        .style16
        {
            width: 272px;
            padding-left: 13px;
            height: 23px;
        }
        .style17
        {
            width: 272px;
          
            height: 38px;
        }
        .radiobtn
        {
            margin-left:50px;
        }
        
        .style18
        {
            width: 272px;
            padding-left: 13px;
            height: 26px;
        }
        .style19
        {
            width: 272px;
            padding-left: 13px;
            height: 29px;
        }
        
        .month
        {
            margin-left:16px;
             border-radius:5px;
            border:none;
            -webkit-box-shadow: 1px 1px 2px #333333;
	        box-shadow: 1px 1px 2px #333333;
        }
        .style20
        {
             border-radius:5px;
            border:none;
            -webkit-box-shadow: 1px 1px 2px #333333;
	        box-shadow: 1px 1px 2px #333333;
        }
        .style21
        {
            width: 272px;
            padding-left: 13px;
            height: 30px;
        }
        .style22
        {
            width: 272px;
            padding-left: 13px;
            height: 25px;
        }
        .style23
        {
            width: 272px;
            padding-left: 13px;
            height: 28px;
        }
        .style24
        {
            width: 272px;
            padding-left: 13px;
            height: 37px;
        }
        .style25
        {
            width: 272px;
           
            height: 33px;
           
        }
        .lblstyle2
        {
            margin-left:182px;
        }
        .lblstyle1
        {
            margin-left:8px;
            float:left;
        }
        .style26
        {
            height: 36px;
            width: 259px;
            padding-left: 10px;
             border-radius:3px;
            border:none;
            -webkit-box-shadow: 1px 1px 2px #333333;
	        box-shadow: 1px 1px 2px #333333;
        }
        .style27
        {
            padding-left: 10px;
            margin-left: 0px;
        }
        .style29
        {
            margin-left: 5px;
        }
        .style30
        {
            width: 241px;
            height: 42px;
        }
        .style31
        {
            height: 36px;
            width: 241px;
            padding-left: 10px;
        }
        .style32
        {
            width: 272px;
            padding-left: 13px;
            height: 50px;
        }
        .style33
        {
             color:#017869;
             font-family:Arial Black;
             border-radius:6px;
             border:none;   
        }
       
        .style33:hover
        {
             box-shadow:1px 1px 8px #333333;  
        }
        .style34
        {
        margin-left:90px;
        margin-top:13px;    
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="mainContent">
    
    <div class="signupbox">
        <table class="style5">
            <caption style="text-align:left;  padding-left: 18px;">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Arial" Font-Size="15pt" ForeColor="White" 
                        Text="Signup for your new account"></asp:Label>
                </caption>
            <tr>
                <td class="style31" valign="bottom">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="13pt" 
                        ForeColor="White" CssClass="lblstyle1" Text="First name" Height="19px"></asp:Label>
                </td>
             
                <td class="style7" valign="bottom">
                         <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="13pt" 
                        ForeColor="White" Text="Last name" Height="19px" CssClass="style29"></asp:Label>
                </td>
             
            </tr>
            <tr>
                <td class="style30" valign="top">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="style10" Width="215px" 
                        Height="29px"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
          ErrorMessage="User name Required" ControlToValidate="TextBox1"><span style="color:Red;">*</span></asp:RequiredFieldValidator>
                    </td>
                   
                <td class="style9" valign="top">
                     <asp:TextBox ID="TextBox2" runat="server" CssClass="style10" Width="215px" 
                        Height="28px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
          ErrorMessage="User name Required" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                        </td>
                        
                   
            </tr>
            <tr>
                <td class="style19" valign="bottom" colspan="2">
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="13pt" 
                        ForeColor="White" Text="Email"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style15" valign="top" colspan="2">
                   <asp:TextBox ID="TextBox3" runat="server" CssClass="style10" Width="214px" 
                        Height="29px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
          ErrorMessage="User name Required" ControlToValidate="TextBox3"><span style="color:Red;">*</span></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style16" valign="top" colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="13pt" 
                        ForeColor="White" Text="Password"></asp:Label></td>
            </tr>
            <tr>
                <td class="style17" valign="top" colspan="2">
                   <asp:TextBox ID="TextBox4" runat="server" Width="214px" CssClass="style10"
                        Height="29px" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
          ErrorMessage="User name Required" ControlToValidate="TextBox4"><span style="color:Red;">*</span></asp:RequiredFieldValidator>
                        </td>
            </tr>
            <tr>
                <td class="style19" colspan="2">
                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="13pt" 
                        ForeColor="White" Text="Date of birth"></asp:Label></td>
            </tr>
            <tr>
                <td class="style18" valign="top" colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style20" 
                        Height="27px" Font-Names="Arial" Width="55px" Font-Size="10pt">
                        <asp:ListItem>Day</asp:ListItem>
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
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
          ErrorMessage="User name Required" ControlToValidate="DropDownList1"><span style="color:Red;">*</span></asp:RequiredFieldValidator>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="month" 
                        Height="27px" 
                        Font-Names="Arial" Font-Size="10pt">
                        <asp:ListItem>Month</asp:ListItem>
                        <asp:ListItem Value="01">Jan</asp:ListItem>
                        <asp:ListItem Value="2">Feb</asp:ListItem>
                        <asp:ListItem Value="3">Mar</asp:ListItem>
                        <asp:ListItem Value="4">Apr</asp:ListItem>
                        <asp:ListItem Value="5">May</asp:ListItem>
                        <asp:ListItem Value="06">Jun</asp:ListItem>
                        <asp:ListItem Value="7">July</asp:ListItem>
                        <asp:ListItem Value="8">Aug</asp:ListItem>
                        <asp:ListItem Value="9">Sep</asp:ListItem>
                        <asp:ListItem Value="10">Oct</asp:ListItem>
                        <asp:ListItem Value="11">Nov</asp:ListItem>
                        <asp:ListItem Value="12">Dec</asp:ListItem>
                    </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
          ErrorMessage="User name Required" ControlToValidate="DropDownList2"><span style="color:Red;">*</span></asp:RequiredFieldValidator>
                   
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="month" 
                        Height="27px" Width="60px" Font-Names="Arial" Font-Size="10pt">
                    <asp:ListItem>Year</asp:ListItem>
                        <asp:ListItem Value="14">2014</asp:ListItem>
                        <asp:ListItem Value="13">2013</asp:ListItem>
                        <asp:ListItem Value="12">2012</asp:ListItem>
                        <asp:ListItem Value="11">2011</asp:ListItem>
                        <asp:ListItem Value="10">2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                    </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
          ErrorMessage="User name Required" ControlToValidate="DropDownList3"><span style="color:Red;">*</span></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td class="style21" valign="bottom" colspan="2">
                    <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="13pt" 
                        ForeColor="White" Text="Gender"></asp:Label></td>
            </tr>
            <tr>
                <td class="style22" valign="top" colspan="2">
                  <asp:DropDownList ID="DropDownList5" runat="server" Width="120px"
                        Height="30px" CssClass="style26" Font-Names="Arial" Font-Size="10pt" 
                        Font-Strikeout="False">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
          ErrorMessage="User name Required" ControlToValidate="DropDownList5"><span style="color:Red;">*</span></asp:RequiredFieldValidator>
                   
                    </td>
            </tr>
            <tr>
                <td class="style23" valign="bottom" colspan="2">
                    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="13pt" 
                        ForeColor="White" Text="Country"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style24" valign="top" colspan="2">
                <asp:DropDownList ID="DropDownList4" runat="server" Width="215px"
                        Height="30px" CssClass="style26" Font-Names="Arial" Font-Size="10pt" 
                        Font-Strikeout="False">
                    <asp:ListItem>Select country</asp:ListItem>
                    </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
          ErrorMessage="User name Required" ControlToValidate="DropDownList4"><span style="color:Red;">*</span></asp:RequiredFieldValidator>
                   
                    </td>
            </tr>
            <tr>
                <td class="style25" colspan="2">
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="style27" 
                        Font-Names="Arial" Font-Size="10pt" ForeColor="White" 
                        Text="I have read and accept all the terms and condition written in this site." 
                        Width="419px" />
                    </td>
            </tr>
            <tr>
                <td class="style32" colspan="2">
                    <asp:Button ID="Submitbtn" runat="server" CssClass="style33" Font-Bold="True" 
                        Font-Names="Arial" ForeColor="#017869" Height="35px" Text="Sign up" 
                        Width="77px" onclick="Submitbtn_Click" />
                    </td>
            </tr>
            <tr>
                <td class="style8" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    
  
</asp:Content>