<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="Step1.aspx.cs" Inherits="Home.Step1" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style35
    {
        height: 429px;
        margin-top: 64px;
    }
    .uplodbtn
    {
             border-style: none;
            border-color: inherit;
            border-width: medium;
            color:#017869;
             font-family:Arial Black;
             border-radius:6px;
             height: 30px;
            width: 106px;
            margin-left: 25px;
            margin-top: 13px;
        }
      .signupbox
        {
             margin-top: 100px;
            -webkit-box-shadow: 1px 1px 2px #333333;
	        box-shadow: 1px 1px 4px #333333;
	        width: 1162px;
            height: 449px;
            margin-left: 49px;
            margin-top: 29px;
            float:left;
            background-color: #017869;
            border-radius:20px;
	        
        }
        .style36
        {
            width: 86%;
            height: 349px;
          
            margin-left: 94px;
            margin-top: 35px;
        }
        .style37
        {
            width: 265px;
        }
        .style38
        {
            width: 372px;
            height: 97px;
        }
        .style10
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-left: 92px;
            margin-top: 1px;
            border-radius:5px;
            -webkit-box-shadow: 1px 1px 2px #333333;
	        box-shadow: 1px 1px 2px #333333;
           
        }
        .style42
        {
            width: 372px;
            height: 34px;
        }
        .style43
        {
            width: 372px;
            height: 27px;
        }
        .style26
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding-left: 10px;
             border-radius:3px;
            -webkit-box-shadow: 1px 1px 2px #333333;
	        box-shadow: 1px 1px 2px #333333;
            margin-left: 91px;
        }
        .style46
        {
            width: 265px;
            height: 97px;
        }
        .style48
        {
            margin-left: 26px;
            margin-top: 23px;
            margin-right: 19px;
           border-radius:9px;
         border:2px solid White;
        }
        .step
        {
            background-color:#00685b;
            width:746px;
            height:394px;
            margin-left: 228px;
            margin-top: 15px;
            border-radius:15px;
            -webkit-box-shadow: 0px 0px 5px #333333;
	        box-shadow: 0px 0px 5px #333333;
        }
        .style51
        {
            width: 372px;
            height: 32px;
        }
        .style52
        {
            width: 372px;
            height: 33px;
        }
        .file {
	color:White;
	font-family:Arial;
            margin-left: 23px;
        }
        .finishbutton
        {
            margin-left:441px;
           border-style: none;
            border-color: inherit;
            border-width: medium;
            color:#017869;
             font-family:Arial Black;
             border-radius:6px;
        }
        .finishbutton:hover
        {
             box-shadow:1px 1px 8px #333333; 
            cursor:pointer; 
        }
        .lbl
        {
            margin-left:90px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="mainContent">


    <div class="style35">
     <div class="signupbox">
     <div class="step">
         <table class="style36">
             <tr>
                 <td rowspan="5" class="style37">
                    <asp:Image ID="Image2" runat="server" CssClass="style48" Height="163px" 
                         Width="223px" ImageUrl="~/Images/default_pic.png" /></td>
                 <td class="style42" valign="bottom">
                     <asp:Label ID="Label1" CssClass="lbl" runat="server" Font-Bold="False" Font-Names="Arial" 
                         Font-Size="13pt" ForeColor="White" Text="Home name"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="style52" valign="top">
                     <asp:TextBox ID="TextBox1" runat="server" CssClass="style10" Height="28px" 
                         Width="179px" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                 </td>
                
             </tr>
             <tr>
                 <td class="style43" valign="bottom">
                     <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="13pt" 
                         ForeColor="White" Text="Home Category" CssClass="lbl"></asp:Label>
                 </td>
               
             </tr>
             <tr>
                 <td class="style51" valign ="top">
                 <asp:DropDownList ID="DropDownList5" runat="server" Width="160px"
                        Height="33px" CssClass="style26" Font-Names="Arial" Font-Size="10pt" 
                        Font-Strikeout="False">
                    <asp:ListItem>Select Category</asp:ListItem>
                    </asp:DropDownList>
                      </td>
                     
                
             </tr>
             <tr>
                 <td class="style43" valign="bottom">
                     <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="13pt" 
                         ForeColor="White" CssClass="lbl" Text="Profession"></asp:Label></td>
               
             </tr>
             <tr>
                 <td class="style46" valign="top">
               <asp:FileUpload ID="selectedfile" runat="server" Width="212px" Height="30px" 
                         CssClass="file" />
                <asp:Button ID="button1" value="Upload" class="uplodbtn" runat="server" 
                         Text="Upload" onclick="button1_Click" />
</td>
                <td class="style38" valign="top">
                 <asp:DropDownList ID="DropDownList1" runat="server" Width="150px"
                        Height="30px" CssClass="style26" Font-Names="Arial" Font-Size="10pt" 
                        Font-Strikeout="False">
                    <asp:ListItem>Select Profession</asp:ListItem>
                    </asp:DropDownList>
                    
                </td>
             </tr>
             <tr><td colspan="2"> 
                 <asp:Button ID="FinishBtn" runat="server" 
                      Text="Finish" CssClass="finishbutton" 
                     Width="100px" Height="28px" onclick="FinishBtn_Click" /></td></tr>
         </table>
         </div>
         </div>
     </div>      
</asp:Content>