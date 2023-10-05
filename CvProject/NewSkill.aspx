<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NewSkill.aspx.cs" Inherits="CvProject.NewSkill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="margin-left:20px">Add New Skill</h2>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" style="margin-left:20px" CssClass="form-control" placeholder="Skill Description"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" style="margin-left:20px" Text="Save" CssClass="btn btn-info" OnClick="Button1_Click" />
</asp:Content>
