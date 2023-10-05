<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateSkill.aspx.cs" Inherits="CvProject.UpdateSkill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="margin-left: 20px">Update Skill</h2>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Style="margin-left: 20px" CssClass="form-control" placeholde="Skill"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Style="margin-left: 20px" Text="Save" CssClass="btn btn-success" OnClick="Button1_Click" />
</asp:Content>
