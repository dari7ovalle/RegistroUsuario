<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="RegistroUsuarios.UI.rUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">


        <div class="card mx-auto mt-5">
            <div class="card-header text-uppercase text-center text-primary">Registro Usuarios</div>
            <div class="card-body">
                <div class="form-row">
                    <div class="form-group">
                        <div class="form-row">

                            <div class=" col- col-sm- 4 col-md-5  col-xs-5">
                                <asp:TextBox ID="UsuarioIdTextBox" runat="server" placeholder="Usuario Id" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class=" col- col-sm- 3 col-md-3 col-xs-3">
                                <asp:Button ID="BuscarButton" CssClass="btn btn-primary" runat="server" Text="Buscar" OnClick="BuscarButton_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                  <div class="col-xs-10 col-md-5">
                        <asp:TextBox ID="NombreTextBox" type="text" runat="server" CssClass="form-control " placeholder="Ingrese un Nombre " minlength="4" MaxLength="40"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="NombreTextBox" ValidationGroup="Guardar" runat="server" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-2 col-md-2">
                        <asp:Label ID="Label1" runat="server" Text="NombreUsuario:"></asp:Label>

                    </div>
                    <div class="col-xs-10 col-md-5">
                        <asp:TextBox ID="NombreUsuarioTextBox1" type="text" runat="server" CssClass="form-control " placeholder="Ingrese un Nombre de Usuario" minlength="5" MaxLength="40"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NombreUsuarioTextBox1" ValidationGroup="Guardar" runat="server" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-2 col-md-2">
                        <asp:Label ID="Label3" runat="server" Text="Correo:"></asp:Label>
                    </div>
                    <div class="col-xs-10 col-md-5">
                        <asp:TextBox ID="CorreoTextBox1" TextMode="Email" type="text" runat="server" CssClass="form-control " placeholder="Ingrese un Correo" minlength="5" MaxLength="40"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="CorreoTextBox1" ValidationGroup="Guardar" runat="server" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-2 col-md-2">
                        <asp:Label ID="Label6" runat="server" Text="Contraseña:"></asp:Label>
                    </div>
                    <div class="col-xs-10 col-md-5">
                        <asp:TextBox ID="ContrasenaTextBox" runat="server" TextMode="Password" CssClass="form-control " placeholder="Ingrese una Contrasena"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="ContrasenaTextBox" ValidationGroup="Guardar" runat="server" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <div class="col-xs-2 col-md-2">
                            <asp:Label ID="Labe2" runat="server" Text="Contraceña:"></asp:Label>
                        </div>
                        <div class="col-xs-10 col-md-5">
                            <asp:TextBox ID="ConfirmarTextBox1" runat="server" TextMode="Password" CssClass="form-control " placeholder="Confirmar Contraceña "></asp:TextBox>
                            <asp:CustomValidator ID="ConfirmarCustomValidator" runat="server" ControlToValidate="ConfirmarTextBox1" ValidationGroup="Guardar" ForeColor="Red" Display="Dynamic" ErrorMessage="Contraseña No Coinciden  " OnServerValidate="ConfirmarCustomValidator_ServerValidate"></asp:CustomValidator>

                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-xs-2 col-md-2">
                            <asp:Label ID="Label4" runat="server" Text="Telefono:"></asp:Label>
                        </div>
                        <div class="col-xs-10 col-md-5">
                            <asp:TextBox ID="TelefonoTextBox1" type="text" runat="server" TextMode="Phone" CssClass="form-control " placeholder="Ingrese un Telefono" minlength="10" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Guardar" ControlToValidate="TelefonoTextBox1" runat="server" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TelefonoTextBox1" ForeColor="Red" Display="Dynamic" ErrorMessage="Porfavor ingrese un numero" ValidationExpression="(^\d*\.?\d*[0-9]+\d*$)|(^[0-9]+\d*\.\d*$)" ValidationGroup="Guardar"></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-2 col-md-2">
                            <asp:Label ID="Label5" runat="server" Text="Celular:"></asp:Label>
                        </div>
                        <div class="col-xs-10 col-md-5">
                            <asp:TextBox ID="CelularTextBox1" type="text" runat="server" TextMode="Phone" CssClass="form-control " placeholder="Ingrese un Celular" minlength="10" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="Guardar" ControlToValidate="CelularTextBox1" runat="server" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="CelularTextBox1" ForeColor="Red" Display="Dynamic" ErrorMessage="Porfavor ingrese un numero" ValidationExpression="(^\d*\.?\d*[0-9]+\d*$)|(^[0-9]+\d*\.\d*$)" ValidationGroup="Guardar"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="col-md-5 col-md-offset-4">
                        <div class="form-group">
                            <asp:Label ID="Label8" runat="server" Text="Tipo de Usuario"></asp:Label>
                            <asp:DropDownList class="form-control" ID="tipoUsuarioDropDownList" runat="server">
                                <asp:ListItem>Administrador</asp:ListItem>
                                <asp:ListItem>Usuario</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-4 col-md-offset-3">
                        <div class="card-footer">
                            <div class="form-group">
                                <asp:Button class="btn btn-primary" ID="nuevoButton" runat="server" Text="Nuevo" OnClick="nuevoButton_Click" />
                                <asp:Button class="btn btn-success" ValidationGroup="Guardar" ID="guardarButton" runat="server" Text="Guardar" OnClick="guardarButton_Click" />
                                <asp:Button class="btn btn-danger" ID="eliminarutton" runat="server" Text="Eliminar" OnClick="eliminarutton_Click" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>







            <%--   <div class="form-group">
        <div class="col-xs-2 col-md-2">
            <asp:Label ID="Label7" runat="server" Text="Celular:"></asp:Label>
        </div>
        <div class="col-xs-10 col-md-5">
             <asp:TextBox ID="TextBox1"  required="required" type="text"  runat="server" CssClass="form-control " placeholder="Ingrese un Nombre"  minlength="5" maxlength="40"></asp:TextBox>
           </div>--%>
        </div>

    </div>
</asp:Content>
