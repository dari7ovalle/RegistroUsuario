<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="RegistroUsuarios.UI.rUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h3>Registro Usuario</h3>
        <br />
        <br />
        <br />
        <br />


        <div class="row">

            <div class=" col- col-sm- 5 col-md-5  col-xs-5">
                <asp:TextBox ID="UsuarioIdTextBox" runat="server" placeholder="Ingrese un Id" CssClass="form-control"></asp:TextBox>

            </div>
            <div class=" col- col-sm- 3 col-md-3 col-xs-3">
                <asp:Button ID="BuscarButton" CssClass="btn btn-primary" runat="server" Text="Buscar" OnClick="BuscarButton_Click"  />

            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-xs-2 col-md-2">
            <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
        </div>
        <div class="col-xs-10 col-md-5">
             <asp:TextBox ID="NombreTextBox"  type="text"  runat="server" CssClass="form-control " placeholder="Ingrese un Nombre"  minlength="5" maxlength="40"></asp:TextBox>
           </div>
    </div>
    <div class="form-group">
        <div class="col-xs-2 col-md-2">
            <asp:Label ID="Label1" runat="server" Text="NombreUsuario:"></asp:Label>
        </div>
        <div class="col-xs-10 col-md-5">
             <asp:TextBox ID="NombreUsuariTextBox1"  type="text"  runat="server" CssClass="form-control " placeholder="Ingrese un Nombre de Usuario"  minlength="5" maxlength="40"></asp:TextBox>
           </div>
    </div>
    <div class="form-group">
        <div class="col-xs-2 col-md-2">
            <asp:Label ID="Label3" runat="server" Text="Correo:"></asp:Label>
        </div>
        <div class="col-xs-10 col-md-5">
             <asp:TextBox ID="CorreoTextBox1"   type="text"  runat="server" CssClass="form-control " placeholder="Ingrese un Correo"  minlength="5" maxlength="40"></asp:TextBox>
           </div>
    </div>

    <div class="form-group">
        <div class="col-xs-2 col-md-2">
            <asp:Label ID="Label6" runat="server" Text="Contraseña:"></asp:Label>
        </div>
        <div class="col-xs-10 col-md-5">
            <asp:TextBox ID="ContrasenaTextBox"   runat="server" CssClass="form-control " placeholder="Ingrese una Contrasena"></asp:TextBox>
        </div>
        <div class="form-group">
        <div class="col-xs-2 col-md-2">
            <asp:Label ID="Labe2" runat="server" Text="Contraceña:"></asp:Label>
        </div>
        <div class="col-xs-10 col-md-5">
            <asp:TextBox ID="ConfirmarTextBox1"    runat="server" CssClass="form-control " placeholder="Confirmar Contraceña "></asp:TextBox>
        </div>
      
    </div> 
        <div class="form-group">
        <div class="col-xs-2 col-md-2">
            <asp:Label ID="Label4" runat="server" Text="Telefono:"></asp:Label>
        </div>
        <div class="col-xs-10 col-md-5">
             <asp:TextBox ID="TelefonoTextBox1"   type="text"  runat="server" CssClass="form-control " placeholder="Ingrese un Nombre"  minlength="5" maxlength="40"></asp:TextBox>
           </div>
    </div>
         <div class="form-group">
        <div class="col-xs-2 col-md-2">
            <asp:Label ID="Label5" runat="server" Text="Celular:"></asp:Label>
        </div>
        <div class="col-xs-10 col-md-5">
             <asp:TextBox ID="CelularTextBox1"   type="text"  runat="server" CssClass="form-control " placeholder="Ingrese un Nombre"  minlength="5" maxlength="40"></asp:TextBox>
           </div>
    </div>
       <%--   <div class="form-group">
        <div class="col-xs-2 col-md-2">
            <asp:Label ID="Label7" runat="server" Text="Celular:"></asp:Label>
        </div>
        <div class="col-xs-10 col-md-5">
             <asp:TextBox ID="TextBox1"  required="required" type="text"  runat="server" CssClass="form-control " placeholder="Ingrese un Nombre"  minlength="5" maxlength="40"></asp:TextBox>
           </div>--%>


               <div class="col-md-6 col-md-offset-3">
        <div class="container">
            <div class="form-group">
                <asp:Label ID="Label8" runat="server" Text="Tipo de Usuario"></asp:Label>
                <asp:DropDownList class="form-control" ID="tipoUsuarioDropDownList" runat="server">
                    <asp:ListItem>Administrador</asp:ListItem>
                    <asp:ListItem>Usuario</asp:ListItem>
                </asp:DropDownList>

            </div>
        </div>
    </div>
    </div>
  <div class="col-md-4 col-md-offset-3">
        <div class="container">
            <div class="form-group">
                <asp:Button class="btn btn-primary" ID="nuevoButton" runat="server" Text="Nuevo" OnClick="nuevoButton_Click"  />
                <asp:Button class="btn btn-success" ID="guardarButton" runat="server" Text="Guardar" OnClick="guardarButton_Click" />
                <asp:Button class="btn btn-danger" ID="eliminarutton" runat="server" Text="Eliminar" OnClick="eliminarutton_Click" />
            </div>
        </div>
    </div>
</asp:Content>
