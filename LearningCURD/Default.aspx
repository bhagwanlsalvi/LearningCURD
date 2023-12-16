<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col-6">
                        <asp:Label ID="Label1" runat="server" Text="Farst Name :" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtfName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="col-6">
                        <asp:Label ID="Label2" runat="server" CssClass="form-label" Text="Middle Name :"></asp:Label>
                        <asp:TextBox ID="txtmName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label3" CssClass="form-label" runat="server" Text="Last Name :"></asp:Label>
                        <asp:TextBox ID="txtlName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-6">
                        <asp:Label ID="Label4" CssClass="form-label" runat="server" Text="Father Name :"></asp:Label>
                        <asp:TextBox ID="txtfathername" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label5" runat="server" Text="Mather Name :" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtmathername" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="mt-5">
                        <asp:Button ID="btnCreate" runat="server" Text=" Create" OnClick="btnCreate_Click" CssClass="btn btn-primary" />                       
                    </div>
                </div>

            </div>
            <div class="col-md-8">

                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Sr No.</th>
                            <th scope="col">First Name</th>
                            <th scope="col">Middle Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">Father Name</th>
                            <th scope="col">Mather Name</th>
                            <th scope="col">Update</th>
                            <th scope="col">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:HiddenField ID="hdnvalue" runat="server" />
                        <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand" OnItemEditing="ListView1_ItemEditing">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblid" runat="server" Text='<%# Eval("Id")%>'>   
                                        </asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblfname" runat="server" Text='<%# Eval("Fname")%>'>   
                                        </asp:Label>

                                    </td>
                                    <td>
                                        <asp:Label ID="lblmname" runat="server" Text='<%# Eval("Mname")%>'>   
                                        </asp:Label>

                                    </td>
                                    <td>
                                        <asp:Label ID="lbllname" runat="server" Text='<%# Eval("Lname")%>'>   
                                        </asp:Label>

                                    </td>
                                    <td>
                                        <asp:Label ID="lblfathername" runat="server" Text='<%# Eval("FatherName")%>'>   
                                        </asp:Label>

                                    </td>
                                    <td>
                                        <asp:Label ID="lblmathername" runat="server" Text='<%# Eval("MatherName")%>'>   
                                        </asp:Label>

                                    </td>
                                       <td>
                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="edit" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" />
                                    </td>
                                </tr>
                                <%-- <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td colspan="2">Larry the Bird</td>
                            <td>@twitter</td>
                        </tr>--%>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</asp:Content>

<%--<div class="container">

        <div class="col-6">
          

                

                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Sr No.</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Middle Name</th>
                                <th scope="col">Last Name</th>
                                <th scope="col">Father Name</th>
                                <th scope="col">Mather Name</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Id")%>'>   
                                    </asp:Label>

                                </td>
                           
                            </tr>
                        </tbody>
                    </table>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>

</div>--%>
