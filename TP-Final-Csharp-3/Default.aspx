<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP_Final_Csharp_3.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Home</h1>

    <h4>La tienda digital que lo tiene todo !!!</h4>

    <div class="row row-cols-1 row-cols-md-3 g-4">

       <%-- <%foreach (dominio.Articulo articulo in listarticulos)
            {%>
                <div class="col">
                    <div class="card"  >
                        <img src="<%: articulo.ImagenUrl %>" class="card-img-top" style="max-height: 18rem;  max-width: 16rem;" alt="...">
                        <div class="card-body">
                            <h4 class="card-title"><%: articulo.Nombre %></h4>
                            <h6 class="card-title"><%: articulo.Marca %></h6>
                            <p class="card-text"><%:articulo.Descripcion %></p>
                        </div>
                    </div>
                </div>
           <% } %>--%>
       
       <asp:Repeater ID="rptRepetidor" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("ImagenUrl") %>" style="max-height: 18rem;" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <h5 class="card-title"><%#Eval("Marca") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <a href="Detalle.aspx?id=" <%#Eval("Id") %>>Ver Detalle</a>
                            <asp:Button Text="Ejemplo" ID="btnEjemplo" CssClass="btn btn-primary" runat="server" CommandArgument='<%#Eval("Id") %>' CommandName="pokemonId" OnClick="btnEjemplo_Click"/>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        

    </div>
</asp:Content>
