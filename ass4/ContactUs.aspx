<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ass4.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Contact Us</h2>
    <form>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" /><br /><br />
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" /><br /><br />
        <label for="message">Message:</label>
        <textarea id="message" name="message"></textarea><br /><br />
        <button type="submit">Submit</button>
    </form>
</asp:Content>
