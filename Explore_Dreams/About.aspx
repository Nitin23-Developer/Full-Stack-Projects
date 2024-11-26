<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Explore_Dreams.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div><!-- About page starts -->
    <div id="guide">

      <div id="hospital">
        <h1 class="shadow p-3 mb-5 bg-body-tertiary rounded">Our Journey</h1>
        <p class="unique">Universal Adventures (Legal Name “Subatomic Revolution Private Limited”), started in 2019, is
          an adventure
          travel company that organizes unique and authentic experiences for travelers from all over the world. We offer
          a wide range of tour packages and adventure activities across India and other countries.
        </p>
        <p class="unique">Our mission is to provide our customers with the opportunity to experience the best of what
          each destination has to offer, in a way that is both sustainable and responsible. We work with the best local
          guides and vendors to ensure that our tours are authentic and that our customers have a positive impact on the
          communities they visit.</p>
      </div>
      <div id="sustain">
        <h1 class="shadow p-3 mb-5 bg-body-tertiary rounded">Milestone</h1>
        <div id="focus">
          <div>
            <h1 class="bold">200+</h1>
            <h4 class="fortune">Adventure Destinations & Tours</h4>
          </div>
          <br />
          <div>
            <h1 class="bold">300+</h1>
            <h4 class="fortune">Destinations across the World</h4>
          </div>
          <br />
          <div>
            <h1 class="bold">2000+</h1>
            <h4 class="fortune">Happy Travellers</h4>
          </div>
        </div>
      </div>
    </div>
    <div id="chief">
      <div id="directors">
        <h1 class="shadow p-3 mb-5 bg-body-tertiary rounded">Director Members</h1>
        <div class="member">
          <div id="nitin">
            <h1 class="david">Nitin Nandanwar</h1>
            <p class="kerry">CEO</p>
          </div>
          <div id="pranay">
            <h1 class="david">David Hussey</h1>
            <p class="kerry">CTO</p>
          </div>
          <div id="mohit">
            <h1 class="david">Kerry Johnson</h1>
            <p class="kerry">COO</p>
          </div>
        </div>
      </div>
    </div>
    <div id="helicopter">
    <h1 id="keyboard">Explore your dream journey today</h1>
        <a href="#" style:text-decoration="none";>
        <asp:Button CssClass="calling" ID="Button1" runat="server" Text="Contact Us" />
        </a>
    </div>

  </div><!-- About page ends -->
</asp:Content>
