<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RegistroUsuarios.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

    <div class="form-row justify-content-center">
        <aside class="col-sm-4">
            <br>
            <br>
            <div class="card">
                <article class="card-body">
                    <a href="/UI/rUsuarios.aspx" class="float-right btn btn-outline-primary">Registrarse</a>
                    <h4 class="card-title mb-4 mt-1">Iniciar Sesión</h4>
                    <form>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Label">Email</asp:Label>
                            <asp:TextBox class="form-control" ID="emailTextBox" placeholder="micorreo@gmail.com" type="email" runat="server"></asp:TextBox>
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">
                            <a class="float-right" href="#">Olvidó su contraseña?</a>
                            <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
                            <asp:TextBox class="form-control" ID="passwordTextBox" placeholder="******" type="password" runat="server"></asp:TextBox>
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">
                                    Guardar contraseña
                                </label>
                            </div>
                            <!-- checkbox .// -->
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">
                            <asp:Button ID="iniciarSButton" type="submit" class="btn btn-primary btn-block" runat="server" Text="Iniciar Sesión" OnClick="iniciarSButton_Click1" />
                        </div>

                          <div id="formFooter">
                    <a class="underlineHover" href="/Default.aspx">Go to the Site</a>
                           </div>
                        <!-- form-group// -->
                    </form>
                </article>
            </div>
            <!-- card.// -->
    </div>
</asp:Content>
