﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MarterPaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="Contatos.aspx.cs" Inherits="Agenda.Contatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Inserir Novo Contato"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Nome"></asp:Label>
    <br />
    <asp:TextBox ID="txtNome" runat="server" Width="482px"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="E-mail"></asp:Label>
    <br />
    <asp:TextBox ID="txtEmail" runat="server" Width="479px"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Telefone"></asp:Label>
    <br />
    <asp:TextBox ID="txtTelefone" runat="server" Width="218px"></asp:TextBox>
    <asp:Button ID="btnInserir" runat="server" OnClick="btnInserir_Click" Text="Inserir" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Lista de Contatos"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSourceContatos" ForeColor="Black" GridLines="Vertical" Height="197px" Width="495px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceContatos" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [contato] WHERE [Id] = @Id" InsertCommand="INSERT INTO [contato] ([nome], [email], [telefone]) VALUES (@nome, @email, @telefone)" SelectCommand="SELECT [Id], [nome], [email], [telefone] FROM [contato]" UpdateCommand="UPDATE [contato] SET [nome] = @nome, [email] = @email, [telefone] = @telefone WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
