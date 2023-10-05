<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Experience.aspx.cs" Inherits="CvProject.Experience1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px">
        <tr>
            <th width="10px">Id</th>
            <th width="50px">Company Name</th>
            <th width="50px">Title</th>
            <th width="50px">Description</th>
            <th width="50px">Year</th>
            <th width="50px">Update</th>
            <th width="50px">Delete</th>

        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("Id") %></td>
                    <td><%# Eval("CompanyName") %></td>
                    <td><%# Eval("Title") %></td>
                    <td><%# Eval("Description") %></td>
                    <td><%# Eval("Year") %></td>
                    <td><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-warning" NavigateUrl='<%#"UpdateExperience.aspx?Id=" + Eval("Id")%>'>Update</asp:HyperLink></td>
                    <td><asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%#"DeleteExperience.aspx?Id=" + Eval("Id")%>'>Delete</asp:HyperLink></td>
                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="AddNewExperience.aspx" style="margin-left: 20px" class="btn btn-primary">Add New Experince</a>
</asp:Content>
