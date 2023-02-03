<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="TP_Final_Csharp_3.Lista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="ListaProductos" CssClass="table" AutoGenerateColumns="true"  runat="server"></asp:GridView>

</asp:Content>
