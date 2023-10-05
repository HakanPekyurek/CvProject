<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateExperience.aspx.cs" Inherits="CvProject.UpdateExperience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="margin-left: 20px">Update Experience</h2>
<br />
<asp:TextBox ID="TxtCompName" runat="server" Style="margin-left: 20px" CssClass="form-control" placeholder="Company Name" ></asp:TextBox>
<br />
<asp:TextBox ID="TxtTitle" runat="server" Style="margin-left: 20px" CssClass="form-control" placeholder="Title" ></asp:TextBox>
<br />
<asp:TextBox ID="TxtDescription" runat="server" Style="margin-left: 20px" CssClass="form-control" placeholder="Description" TextMode="Multiline" Height="200px" ></asp:TextBox>
<br />
<asp:TextBox ID="TxtYear" runat="server" Style="margin-left: 20px" CssClass="form-control" placeholder="Year"></asp:TextBox>
<br />
<asp:Button ID="Button1" runat="server" Style="margin-left: 20px" Text="Save" CssClass="btn btn-success" OnClick="Button1_Click"/>
</asp:Content>
