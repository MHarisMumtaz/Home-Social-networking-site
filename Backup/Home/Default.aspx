
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="~/Default.aspx.cs" Inherits="Home.Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
<style type="text/css">

   .style32:hover
   {
         box-shadow:1px 1px 8px #333333;     
   } 
   
   .style32
   {
        color:#017869;
        font-family:Arial Black;
        border-radius:6px;
        border:none;
   }
    
    a
    {
        color:White; 
        font-family:Arial;
    }
   
    .style33
    {
        width: 260px;
        height: 31px;
    }
    .style34
    {
        width: 260px;
        height: 30px;
    }
    .style35
    {
        height: 49px;
    }

    .style36
    {
        margin-left:90px;
        margin-top:15px;  
        }

</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="mainContent">

    <div class="style3" style=" margin-top: 100px; -webkit-box-shadow: 1px 1px 2px #333333;
	box-shadow:  1px 1px 4px #333333;">
  
    </div>

    <div class="style2"  style=" margin-top: 100px; -webkit-box-shadow: 1px 1px 2px #333333;
	box-shadow:  1px 1px 4px #333333;">
    <table border="0" style="width:300px; margin-left:30px; margin-top:25px;">
  <tr><td valign="top" style="color: White;
            font-family: Arial;
            width: 260px;">Email</td></tr>
  <tr><td valign="top" style="height: 53px;
            width: 260px;">
      <asp:TextBox ID="Emailtxt" runat="server" Height="37px" 
          Width="244px" CssClass="txtbx" ValidationGroup="usertext"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
          ErrorMessage="User name Required" ControlToValidate="Emailtxt"><span style="color:Red;">*</span></asp:RequiredFieldValidator>
      </td></tr>
      <tr><td valign="top"style="color: White;
            font-family: Arial;
            width: 260px;
            height: 22px;">Password</td></tr>
  <tr><td valign="top" style=" height: 46px;
            width: 260px;">
      <asp:TextBox ID="Password" CssClass="txtbx" runat="server" Height="37px" 
          Width="244px" TextMode="Password" meta:resourcekey="TextBox2Resource1"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
          ErrorMessage="User name Required" ControlToValidate="Password" Display="Dynamic"><span style="color:Red;">*</span></asp:RequiredFieldValidator>
      </td></tr>
      <tr><td valign="top" class="style33"><a href="#">forgot your password?</a></td></tr>
      <tr>
      <td valign="top" style=" color: White;
            font-family: Arial;
            " class="style34">
          
             <asp:CheckBox ID="CheckBox1" runat="server" Text="Keep me Sign in " />
          
             </td>
             </tr>
          <tr><td class="style35" valign="top"><div class="logbtn1">
              <asp:Button ID="loginbtn" runat="server" CssClass="style32" Height="38px" 
                  Text="Login" Width="74px" onclick="loginbtn_Click"
                 />
          </div></td></tr>
              <tr><td valign="bottom"
              style="color: White;
            font-family: Arial;
            ">Don't have an Account <a href="SignUp.aspx" style="font-weight:bold;">Signup</a> Now.</td></tr>
    </table>    
    </div>
   
</asp:Content>