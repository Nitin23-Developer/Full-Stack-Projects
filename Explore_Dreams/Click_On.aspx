<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Click_On.aspx.cs" Inherits="Explore_Dreams.Click_On" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
          <div class="china">
              <!--Click Now part starts-->
        <h1 id="mystique">Discover the Himalayas: A Journey Like No Other</h1>
        <div class="sacred">
        <div class="scaling">
         
            <p id="vistas">Explore the awe-inspiring Himalayas, a majestic range spanning five countries and offering unparalleled adventures. Trek through ancient forests, charming villages, and stunning valleys, encountering diverse wildlife and vibrant flora. Experience the unique blend of cultures and the warm hospitality of local communities. For the spiritually inclined, visit sacred monasteries, temples, and lakes that offer tranquility and mystique. Whether you're scaling Everest or simply soaking in the breathtaking landscapes, the Himalayas promise an unforgettable experience. Embrace the crisp mountain air, stunning vistas, and the profound serenity of this timeless natural wonder.</p>
         </div>
         <div class="blend">
           <h1 id="details">Customer Details</h1>
             <div class="access">
             <p>&nbsp;&nbsp; Enter Name&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox1" runat="server" Width="308px"></asp:TextBox>
&nbsp;&nbsp;</p>
             <p>&nbsp;&nbsp; Locations&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:DropDownList ID="DropDownList1" runat="server" Width="316px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem> Kerala    </asp:ListItem>
                     <asp:ListItem>Nilgiri Safari</asp:ListItem>
                     <asp:ListItem>Varanasi-Ayodhya-Agraa</asp:ListItem>
                     <asp:ListItem>Asaam Luxurious Destination</asp:ListItem>
                     <asp:ListItem>Chhattisgarh&#39;s Waterfalls &amp; Mountains</asp:ListItem>
                     <asp:ListItem>TamilNadu Cultural &amp; Historical Places</asp:ListItem>
                     <asp:ListItem>Ajanta-Vellore</asp:ListItem>
                     <asp:ListItem></asp:ListItem>
                 </asp:DropDownList>
                 &nbsp;</p>
             <p>&nbsp;&nbsp; Rate&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:DropDownList ID="DropDownList2" runat="server" Width="320px" style="margin-left: 6px" AutoPostBack="True">
                 </asp:DropDownList>
                 &nbsp;</p>
             <p>&nbsp;&nbsp; Id&nbsp; Proof&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:FileUpload ID="FileUpload1" runat="server" Width="319px" style="margin-left: 7px" />
                 &nbsp;</p>
             <p>&nbsp;&nbsp; Date Of Birth&nbsp; :&nbsp;
                 <asp:TextBox ID="TextBox2" runat="server" Width="310px" style="margin-left: 7px" TextMode="Date"></asp:TextBox>
                 &nbsp;</p>
             <p>&nbsp;&nbsp; Mobile No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                 <asp:TextBox ID="TextBox3" runat="server" Width="309px" style="margin-left: 8px"></asp:TextBox>
                 &nbsp;</p>
             <p>&nbsp;</p>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                 &nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                 </p>
             <p>&nbsp;</p>
             <p>&nbsp;</p>
                 </div>
         </div>
        </div>
       </div><!--Click Now part ends-->
       
</asp:Content>
