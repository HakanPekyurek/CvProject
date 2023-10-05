<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CvProject.Contact1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px">
        <tr>
            <th>Id</th>
            <th>Name Surname</th>
            <th>eMail</th>
            <th>Subject</th>
            <th>Show Message</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <itemtemplate>
                <tr>
                    <td><%# Eval("Id") %></td>
                    <td><%# Eval("NameSurname") %></td>
                    <td><%# Eval("Mail") %></td>
                    <td><%# Eval("Subject") %></td>
                    <td><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-warning" NavigateUrl='<%#"MessageDetail.aspx?Id=" + Eval("Id")%>'>Show Message</asp:HyperLink></td>
                </tr>
            </itemtemplate>
        </asp:Repeater>
    </table>
</asp:Content>
