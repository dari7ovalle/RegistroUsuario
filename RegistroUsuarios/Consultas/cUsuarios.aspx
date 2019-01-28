<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cUsuarios.aspx.cs" Inherits="RegistroUsuarios.Consultas.cUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="container">

    
    <h2>Consultas de Usuarios</h2>
         
                 <div class="form-group">
                    <div class="col-xs-3 col-md-3">
                         <asp:DropDownList ID="BuscarDropDownList" CssClass="form-control " runat="server">
                             <asp:ListItem>UsuarioId</asp:ListItem>
                             <asp:ListItem>Nombre</asp:ListItem>
                         </asp:DropDownList>

                     </div>
                     <br />
                     
                     <div class="form-row">
                         <div class="form-group">
                             <asp:Label Text="Desde" runat="server" />
                             <asp:TextBox CssClass="form-control" ID="DesdeTextBox" TextMode="Date"  runat="server" />
                         </div>
                         
                         <div class="form-group">
                             <asp:Label Text="Hasta" runat="server" />
                             <asp:TextBox CssClass="form-control" ID="HastaTextBox" TextMode="Date"  runat="server" />
                         </div>

                     </div>
                         <div class="row">
                      <div class="col-xs-6 col-md-5">
                        <asp:TextBox runat="server" ID="FiltroTextBox" CssClass="form-control " placeholder="UsuarioId"/>
                      </div>
                      <div class="col-xs-3 col-md-7">
                        <asp:Button Text="Buscar"  for="FiltroTextBox" runat="server" ID="BuscarButton" OnClick="BuscarButton_Click" CssClass="btn btn-primary"  />
                      </div>
                 </div>
  

            <div class=" col-md-12 ">
                <asp:GridView ID="DatosGridView" runat="server" Class="table table-condensed table-borered-sensible " CellPadding="4"
                    ForeColor="#333333" GridLines="None">
                </asp:GridView>
                 </div>
            </div>
</div>

</asp:Content>
