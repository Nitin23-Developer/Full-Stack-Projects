<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Explore_Dreams.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
     <section class="Garden">
        <div id="dynamic">
            <p id="welcome">Welcome to</p>
            <div id="experience">
            <p id="Orange">Explore</p>
            <p id="Blue">Dreams</p>
        </div>
        </div>
       <div class="store">
 <p>Username :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="TextBox1" runat="server" Width="240px"></asp:TextBox>
           </p>
 <p>Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="TextBox2" runat="server" Width="239px" TextMode="Password"></asp:TextBox>
           </p>
           <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               </p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
               &nbsp;&nbsp;&nbsp;<a id="google" href="http://localhost:57011/Sign_in">Sign In</a> </p>
           <p style="width: 446px">
&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;
               </p>
           <p>
           </p>
           <p>
&nbsp;&nbsp;
               </p>
           <p>
           </p>
   </div>
    </section>
       
    <br /><br />
</asp:Content>
