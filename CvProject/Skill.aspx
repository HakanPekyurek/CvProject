<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Skill.aspx.cs" Inherits="CvProject.Skill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px">
            <tr>
                <th>Id</th>
                <th>Skill</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td> <%# Eval("Id") %></td>
                        <td> <%# Eval("Skill") %></td>
                        <td><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%#"DeleteSkill.aspx?Id=" + Eval("Id")%>' >Delete</asp:HyperLink></td>
                        
                        <td><asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success" NavigateUrl='<%#"UpdateSkill.aspx?Id=" + Eval("Id")%>' >Update</asp:HyperLink></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    <a href="NewSkill.aspx" style="margin-left:20px" class="btn btn-primary">Add New Skill</a>
</asp:Content>
