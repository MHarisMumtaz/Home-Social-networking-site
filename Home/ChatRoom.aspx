<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserProfile.Master" CodeBehind="~/ChatRoom.aspx.cs" Inherits="Home.ChatRoom" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="head1">
    <style type="text/css">
        .chat-box
    {
      width:515px;
      height:698px;
    }
    .chat-start
    {
        width:583px;
        height:557px;
        margin-top: 148px;
       box-shadow:0px 0px 3px Gray;
       border-radius:4px; 
        margin-left: 5px;
        position:fixed;
        top: -41px;
        left: 325px;
    }
    .chat-with
    {
         width:575px;
         float:left;
        height:47px;
     border-bottom:1px Solid Gray;
        margin-left:3px;
    }
    .chat-con
    {
         width:573px;
         float:left;
        height:372px;
      overflow:scroll;
      overflow-x:Hidden;
        margin-left:3px;
        margin-top:9px;
    }
    .Reply-con
    {
         width:564px;
         float:left;
        height:105px;
        box-shadow:0px 0px 4px Gray;
        border-radius:3px;
      
        margin-left:10px;
        margin-top:9px;
    }
    .friend-name
    {
        margin-left:15px;
        margin-top:19px;
        float:left;
    }
    .reply
    {
       
         width:554px;
         float:left;
        height:37px;
        margin-top: 13px;
    }
    .reply-txt
    {
        width:556px;
         float:left;
        height:58px;
        border-bottom:1px Solid Gray;
        margin-left: 2px;
    }
    .style64
    {
        margin-left: 4px;
        margin-top: 7px;
    }
    .style65
    {
        margin-left: 465px;
    }
    .conversation-box
    {
         width:565px;
         float:left;
         height:70px;
         border-bottom:1px Solid Gray;   
        margin-left: 9px;
    }
    .user-pic
    {
        width:100px;
        height:54px;
        float:left;
        margin-left: 7px;
        margin-top: 7px;
    }
    .user-conv
    {
         width:451px;
        height:54px;
        float:left;
       
        margin-top: 7px;
    }
    .style66
    {
        margin-top: 4px;
        border:none;
        
    }
    .datetime
    {
       float:left;
        margin-top: -28px;
        margin-left: 327px;
    }
    .style67
    {
        margin-left: 9px;
    }
</style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="mainContent1">
    <div class="chat-box">
        <div class="chat-start">
            <div class="chat-with">
                <asp:Label ID="Label10" runat="server" Text="UserName" CssClass="friend-name" 
                    Font-Names="Arial Unicode MS" Font-Size="13pt" ForeColor="#017869" 
                    Height="29px" Width="232px"></asp:Label>
            </div>
            <div class="chat-con">
            <asp:Repeater ID="Conversation_repeator" runat="server">
            <ItemTemplate>
                <div class="conversation-box">
                    <div class="user-pic">
                        <asp:Image ID="Image3" runat="server" CssClass="style67" Height="53px" 
                            ImageUrl="~/Images/default_pic.png" Width="72px" />
                    </div>
                    <div class="user-conv">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="style66" Height="43px" 
                            Width="315px" ReadOnly="True" BackColor="#ECE9E9" Rows="6">here is the text which has to be conversated</asp:TextBox>
                        <asp:Label ID="Date_Time" CssClass="datetime" runat="server" 
                            Text="12/12/12 ,11:10PM" Width="123px" ForeColor="#017869"></asp:Label>
                    </div>
                </div>
                </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="Reply-con">
                <div class="reply-txt">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="style64" Height="40px" 
                        Width="542px" Font-Names="Arial Unicode MS" ForeColor="#666666"></asp:TextBox>
                </div>
                <div class="reply">
                    <asp:Button ID="Button2" runat="server" CssClass="style65" Text="Enter" 
                        Width="81px" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
