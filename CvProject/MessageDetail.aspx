<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MessageDetail.aspx.cs" Inherits="CvProject.MessageDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 Style="margin-left: 20px">Message Detail</h3>
    <asp:TextBox ID="TxtSender" runat="server" Style="margin-left: 20px" CssClass="form-control" enabled="false"></asp:TextBox>
    <br />
    <asp:TextBox ID="TxtSubject" runat="server" Style="margin-left: 20px" CssClass="form-control" enabled="false"></asp:TextBox>
    <br />
    <asp:TextBox ID="TxtMessage" runat="server" TextMode="Multiline" Style="margin-left: 20px" CssClass="form-control" enabled="false" Height="100px"></asp:TextBox>
</asp:Content>
