<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sign_in.aspx.cs" Inherits="Explore_Dreams.Sign_in" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <section class="Garden">
        <div id="dynamic">
            <p id="welcome">Welcome to</p>
            <div id="experience">
            <p id="Orange">Explore</p>
            <p id="Blue">Dreams</p>
        </div>
        </div>
               
         <div class="Armori">
                <p>Username :&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="247px"></asp:TextBox>
                </p>
                <p>Password&nbsp; :&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                <p>
                    &nbsp;<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" />
                    &nbsp;</div>     
    </section>
    <br /><br />
</asp:Content>
