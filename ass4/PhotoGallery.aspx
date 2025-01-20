<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PhotoGallery.aspx.cs" Inherits="ass4.PhotoGallery" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }

        .gallery {
            margin: 20px;
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }

        .gallery img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .upload-section {
            margin: 20px;
        }

        .upload-section input {
            margin: 5px;
        }
    </style>

    <div class="header">
        <h1>Photo Gallery</h1>
    </div>

    <div class="upload-section">
        <h3>Upload a Photo:</h3>
        <asp:FileUpload ID="FileUploadControl" runat="server" />
        <asp:Button ID="UploadButton" runat="server" Text="Upload Photo" OnClick="UploadButton_Click" />
        <asp:Label ID="StatusLabel" runat="server" Text=""></asp:Label>
    </div>

    <div class="gallery" id="photoGallery">
        <asp:Repeater ID="PhotoRepeater" runat="server">
            <ItemTemplate>
                <img src='<%# Eval("ImageUrl") %>' alt="Photo" />
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

