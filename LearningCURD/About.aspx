<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-6">
        <asp:Label ID="Label1" runat="server" Text="Mather Name :" CssClass="form-label"></asp:Label>
        <asp:FileUpload ID="txtimg" runat="server" CssClass="form-control" />
    </div>

    <div class="p-3">
        <asp:Button ID="btnCreate" runat="server" Text=" Create" OnClick="btnCreate_Click"  CssClass="btn btn-primary" />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" Visible="false"  />
    </div>
</asp:Content>
