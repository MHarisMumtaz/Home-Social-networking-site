<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserProfile.Master" CodeBehind="Profile.aspx.cs" Inherits="Home.Profile" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="head1">
    <style type="text/css">
            .Post-Video
            {
                   
            float:right;
            width:526px;
            height:185px;   
            margin-top:0px;
            margin-right:-35px;
            border-radius:3px;
            box-shadow:0px 0px 5px Gray;
            
            }
        .post-upload
        {
            width:526px;
            height:62px;
           
            margin-top: 10px;
            border-top:1px solid Gray;
        }
       
       
        .style60
        {
            margin-left: 15px;
            margin-top: 20px;
        }
        .style61
        {
            margin-left: 10px;
            margin-top: 2px;
        }
        .videos-sec
        {
            width:526px;
            height:411px;
            border-top:1px solid Gray;
            margin-top: 41px;
            float:right;
            margin-right:-35px;
            border-radius:3px;
            box-shadow:0px 0px 5px Gray;
       
        }
       .video-text
       {
            width:515px;
            height:83px;
            margin-left:5px;
            float:left;
             border-bottom:1px solid Gray;
            margin-top: 14px;
        }
       .video-likes
       {
           margin-top:22px;
            width:526px;
            height:29px;
            float:right;
             border-top:1px solid Gray;
           
       }
       .User-video
       {
            width:526px;
            height:242px;
            float:right;
            
       }
        .style62
        {
            margin-left: 80px;
        }
        .clbl
        {
           font-family:Arial Unicode MS;
           color:White;
           margin-left:15px;
        }
        .catg
        {
            font-family:Arial Unicode MS;
           color: #017869;
           margin:0 0 0 5px;
        }
        .style63
        {
            margin-top: 1px;
        }
       .desc
       {
           float:right;
          margin-left:0px;
          margin-top:3px;
       }
       
        .style66
        {
            margin-left: 12px;
            margin-top: 11px;
        }
       
        .style67
        {
            margin-top: 15px;
        }
       .titlevideo
       {
           float:left;
        }
        .style68
        {
            margin-left: 0px;
            margin-top: 25px;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="mainContent1">
          <div class="Post-Video">
              <asp:TextBox ID="TextBox4" runat="server" CssClass="style66" Height="23px" 
                  Width="142px" ontextchanged="TextBox4_TextChanged">Video Title</asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="style59" Height="63px" 
                    Width="496px" CausesValidation="True" EnableTheming="True" 
                    Font-Names="Arial Unicode MS" ForeColor="#666666" TextMode="MultiLine" 
                  style = "resize:none; margin-top: 8px; margin-left: 11px;" 
                  ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                <div class="post-upload">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="style60" 
                        Width="203px" />
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style62" 
                        Font-Names="Arial Unicode MS" Height="23px" Width="104px">
                    </asp:DropDownList>
                    <asp:Button ID="Button2" runat="server" CssClass="style61" Height="29px" 
                        Text="Post Video" Width="90px" onclick="Button2_Click" />
                </div>
            </div>
            <asp:Repeater runat="server" ID="videos_repeator">
                <ItemTemplate>
                     <div class="videos-sec">
                             <div class="video-text">
                                 <asp:Label ID="Label15" runat="server" Text='<%# Eval("Video_name") %>' CssClass="titlevideo" 
                                     Width="125px"></asp:Label>
                                 <asp:TextBox ID="TextBox5" runat="server" CssClass="style68" Height="44px" 
                                     ReadOnly="True" TextMode="MultiLine" Text='<%# Eval("Video_desc") %>' Width="374px"></asp:TextBox>
                                 
                             </div>
                            <div class="User-video">

                                 <asp:Image ID="Image3" runat="server" CssClass="style65 style67" Height="237px" 
                                 ImageUrl="~/Images/videoplay.png" Width="521px" />
                                
                             </div>
                            <div class="video-likes">
                                  <asp:Label ID="Label11" runat="server" CssClass="clbl" Text="Count"></asp:Label>
                                  <asp:ImageButton ID="ImageButton3" runat="server" CssClass="style64" 
                                       Height="21px" ImageUrl="~/Images/like.png" Width="27px" />
                                  <asp:Label ID="Label12" runat="server" CssClass="clbl" Text="Count1"></asp:Label>
                                  <asp:ImageButton ID="ImageButton4" runat="server" CssClass="style63" 
                                       Height="18px" ImageUrl="~/Images/dislike.png" Width="28px" />
                                  <asp:Label ID="Label13" runat="server" CssClass="clbl" Text="Category"></asp:Label>
                                  <asp:Label ID="Label14" runat="server" CssClass="catg" Text='<%# Eval("V_Cat") %>'></asp:Label>
                            </div>
                       </div>
            </ItemTemplate>
            </asp:Repeater>
</asp:Content>