<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    </div>
    <div class="container py-5">
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
                    <div class="col-6">
                        <asp:Label ID="Label7" runat="server" Text="Mather Name :" CssClass="form-label"></asp:Label>
                        <asp:FileUpload ID="txtimg" runat="server" CssClass="form-control" />
                    </div>

                    <div class="p-3">
                        <asp:Button ID="btnCreate" runat="server" Text=" Create" OnClick="btnCreate_Click" CssClass="btn btn-primary" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" Visible="false" OnClick="btnUpdate_Click" />
                    </div>
                </div>
            </div>


        </div>

        <div class="col-md-8 py-4">

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Sr No.</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Middle Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Father Name</th>
                        <th scope="col">Mather Name</th>
                        <th scope="col">Images</th>
                        <th scope="col">Status</th>
                        <th scope="col">Change Status</th>
                        <th scope="col">Update</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:HiddenField ID="hdnvalue" runat="server" />
                    <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand" OnItemDeleting="ListView1_ItemDeleting" OnItemEditing="ListView1_ItemEditing">

                        <ItemTemplate>
                            <asp:Label ID="lblid" runat="server" Text='<%# Eval("Id")%>' Visible="false"></asp:Label>
                            <asp:Label ID="lblfname" runat="server" Text='<%# Eval("Fname")%>' Visible="false"></asp:Label>
                            <asp:Label ID="lblmname" runat="server" Text='<%# Eval("Mname")%>' Visible="false"></asp:Label>
                            <asp:Label ID="lbllname" runat="server" Text='<%# Eval("Lname")%>' Visible="false"></asp:Label>
                            <asp:Label ID="lblfathername" runat="server" Text='<%# Eval("FatherName")%>' Visible="false"></asp:Label>
                            <asp:Label ID="lblmathername" runat="server" Text='<%# Eval("MatherName")%>' Visible="false"></asp:Label>
                            <asp:FileUpload ID="lblimgupload" runat="server" Text='<%# Eval("Img")%>' Visible="false"></asp:FileUpload>
                            <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status")%>' Visible="false"></asp:Label>
                            <tr>
                                <td><%# Eval("Id")%>              </td>
                                <td><%# Eval("Fname")%> 
                                </td>
                                <td><%# Eval("Mname")%>
                                </td>
                                <td><%# Eval("Lname")%> 
                                </td>
                                <td><%# Eval("FatherName")%> 
                                </td>
                                <td><%# Eval("MatherName")%> 
                                </td>
                                <td>
                                    <img src="images/<%#Eval("Img")%>" class="img-fluid">
                                </td>
                                <td><%# Eval("Status")%> 
                                </td>
                                <td>
                                    <span id="span1" runat="server" visible='<%# Eval("Status").ToString() =="True" ? true : false %>'>
                                        <asp:Button ID="Active" runat="server" Text="Deactive" CommandName="Deactive" CssClass="btn btn-danger" />
                                    </span>

                                    <span id="span2" runat="server" visible='<%# Eval("Status").ToString()=="False"? true:false %>'>
                                        <asp:Button ID="Deactive" runat="server" Text="Active" CommandName="Active" CssClass="btn btn-success" />
                                    </span>
                                </td>

                                <td>
                                    <asp:Button ID="btnUpadet" runat="server" Text="Edit" CommandName="edit" />
                                </td>
                                <td>
                                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" />
                                </td>

                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </tbody>
            </table>
        </div>
    </div>


</asp:Content>


