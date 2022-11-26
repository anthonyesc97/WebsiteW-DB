<%@ Page Title="FAQ" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="WebDevCa.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <h2>Hi! Looking for some help or advice, take a look below you might find the answer your looking for.</h2>
  	    <div id="accordion">
              <br />
              <br />
		<h4 class="question">Opening Hours?</h4>
            		<p class="answer">Monday 9am - Friday 4pm<br />Weekends 9am - 3pm</p>
            	
              		<h4 class="question">How to place an online order?</h4>
            		<p class="answer">Click "My Account". Register. Login and make your order with us.</p>
                
                	<h4 class="question">How long is delivery</h4>
                	<p class="answer">Delivery is usually 30 minutes (peak times will be 45mins)</p>
                
                	<h4 class="question">Are your foods fresh</h4>
                	<p class="answer">Yes!!! We take great pride in prepping and baking our goods in house on the day.</p>
                
                	<h4 class="question">What are the guidelines for entering the bakery.</h4>
                	<p class="answer">Due to current situations we ask all customers adhere to covid-19 guidlines below. Click the link below<br /><a href="https://www2.hse.ie/conditions/covid19/symptoms/">Showing signs of symptoms</a><br /><a href="https://www2.hse.ie/conditions/covid19/">Covid-19 Government Guidelines</a></p>
    	</div>
        <script src="java.js"></script>
    </p>
</asp:Content>
