<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserProfile.Master" CodeBehind="SearchResult.aspx.cs" Inherits="Home.SearchResult" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="head1">
    <style type="text/css">
        .searchmain
    {
        width:582px;
        height:878px;
            margin-top: 0px;
        }
     .pic1
        {
            float:left;
            margin-top:0px;
            margin-left:35px;
            width:506px;
            height:177px;
            left: -4px;
            top: -4px;
        box-shadow:0px 0px 5px Gray;
        }
.imagestyle
        {
            float:left;
           border-radius:9px;
         border:2px solid White;
        box-shadow:0px 0px 5px Gray;
            top: 99px;
            left: 58px;
            margin-top: 20px;
        margin-left: 14px;
    }
        .uname1
        {
           
            float:left;
            margin-top: 16px;
            top: 105px;
            left: 58px;
            color: #017869;
            margin-left: 27px;
        }
    .style66
    {
        margin-left: 5px;
        margin-top: 30px;
        float:left;
    }
    .right
    {
        width:100px;
        height:177px;
        float:right;
        margin-left: 6px;
    }
</style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="mainContent1">
    <div class="searchmain">
    <asp:Repeater ID="Search_Friends_rep" runat="server" 
            onitemcommand="Search_Friends_rep_ItemCommand">
    <ItemTemplate>
<div class="pic1">
   <img src='Userpics/<%# Eval("Column1") %>' alt='Images/default_pic.png'  width="176px" height="141px" class="imagestyle" />
          <asp:Label ID="UserNamelabel" runat="server" Text='<%# Eval("H_name") %>' CssClass="uname1" 
              Font-Bold="False" Font-Names="Arial Unicode MS" ForeColor="#017869" 
              Width="144px"></asp:Label>
            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("User_ID") %>' />
              <asp:Label ID="Label1" runat="server" Text='<%# Eval("U_name") %>' CssClass="uname1" 
              Font-Bold="False" Font-Names="Arial Unicode MS" ForeColor="#017869" 
              Width="144px"></asp:Label>
              <asp:Label ID="Label3" runat="server" Text='<%# Eval("Prof_Desc") %>' CssClass="uname1" 
              Font-Bold="False" Font-Names="Arial Unicode MS" ForeColor="#017869" 
              Width="144px"></asp:Label>
              <asp:Label ID="Label2" runat="server" Text='<%# Eval("Joining_Date") %>' CssClass="uname1" 
              Font-Bold="False" Font-Names="Arial Unicode MS" ForeColor="#017869" 
              Width="144px"></asp:Label>
              <div class="right">
          <asp:Button ID="Button1" runat="server" Height="31px" 
              Text="Add" Width="78px" CssClass="style66"  />
              </div>
      </div>
      </ItemTemplate>
      </asp:Repeater>
      </div>
</asp:Content>