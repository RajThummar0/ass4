<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resume.aspx.cs" Inherits="ass4.Resume" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .form-container {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container label {
            font-weight: bold;
        }

        .form-container input[type="text"],
        .form-container input[type="date"],
        .form-container input[type="number"] {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .resume-display {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f1f1f1;
        }

        .resume-display h3 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>

    <div class="form-container">
        <h2>Enter Your Resume Details</h2>
        <asp:Label ID="StatusLabel" runat="server" Text="" ForeColor="Red"></asp:Label>
        <asp:Panel ID="FormPanel" runat="server">
            <asp:Label runat="server" AssociatedControlID="NameTextBox">Name:</asp:Label>
            <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>

            <asp:Label runat="server" AssociatedControlID="FatherNameTextBox">Father's Name:</asp:Label>
            <asp:TextBox ID="FatherNameTextBox" runat="server"></asp:TextBox>

            <asp:Label runat="server" AssociatedControlID="OccupationTextBox">Father's Occupation:</asp:Label>
            <asp:TextBox ID="OccupationTextBox" runat="server"></asp:TextBox>

            <asp:Label runat="server" AssociatedControlID="DOBTextBox">Date of Birth:</asp:Label>
            <asp:TextBox ID="DOBTextBox" runat="server" TextMode="Date"></asp:TextBox>

            <asp:Label runat="server" AssociatedControlID="TenthTextBox">10th Percentage:</asp:Label>
            <asp:TextBox ID="TenthTextBox" runat="server" TextMode="Number"></asp:TextBox>

            <asp:Label runat="server" AssociatedControlID="TwelfthTextBox">12th Percentage:</asp:Label>
            <asp:TextBox ID="TwelfthTextBox" runat="server" TextMode="Number"></asp:TextBox>

            <asp:Label runat="server" AssociatedControlID="BETextBox">B.E. Percentage:</asp:Label>
            <asp:TextBox ID="BETextBox" runat="server" TextMode="Number"></asp:TextBox>

            <asp:Label runat="server" AssociatedControlID="ExperienceTextBox">Work Experience (Years):</asp:Label>
            <asp:TextBox ID="ExperienceTextBox" runat="server" TextMode="Number"></asp:TextBox>

            <asp:Label runat="server" AssociatedControlID="SalaryTextBox">Previous Salary:</asp:Label>
            <asp:TextBox ID="SalaryTextBox" runat="server" TextMode="Number"></asp:TextBox>

            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        </asp:Panel>
    </div>

    <asp:Panel ID="ResumeDisplayPanel" runat="server" Visible="false" CssClass="resume-display">
        <h3>Resume Details</h3>
        <p><strong>Name:</strong> <asp:Label ID="NameLabel" runat="server"></asp:Label></p>
        <p><strong>Father's Name:</strong> <asp:Label ID="FatherNameLabel" runat="server"></asp:Label></p>
        <p><strong>Father's Occupation:</strong> <asp:Label ID="OccupationLabel" runat="server"></asp:Label></p>
        <p><strong>Date of Birth:</strong> <asp:Label ID="DOBLabel" runat="server"></asp:Label></p>
        <p><strong>10th Percentage:</strong> <asp:Label ID="TenthLabel" runat="server"></asp:Label></p>
        <p><strong>12th Percentage:</strong> <asp:Label ID="TwelfthLabel" runat="server"></asp:Label></p>
        <p><strong>B.E. Percentage:</strong> <asp:Label ID="BELabel" runat="server"></asp:Label></p>
        <p><strong>Work Experience:</strong> <asp:Label ID="ExperienceLabel" runat="server"></asp:Label> Years</p>
        <p><strong>Previous Salary:</strong> <asp:Label ID="SalaryLabel" runat="server"></asp:Label></p>
    </asp:Panel>
</asp:Content>
