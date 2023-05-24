<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="xemgiohang.aspx.cs" Inherits="Presentation.xemgiohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaPet" DataSourceID="SqlDataSource1">
		<Columns>
			<asp:CommandField ShowDeleteButton="True" ButtonType="Button" DeleteText="Xóa" ShowCancelButton="False" />
			<asp:BoundField DataField="MaPet" HeaderText="MaPet" ReadOnly="True" SortExpression="MaPet" />
			<asp:BoundField DataField="TenPet" HeaderText="TenPet" SortExpression="TenPet" />
			<asp:BoundField DataField="GiongPet" HeaderText="GiongPet" SortExpression="GiongPet" />
			<asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
			<asp:BoundField DataField="CanNang" HeaderText="CanNang" SortExpression="CanNang" />
			<asp:BoundField DataField="TuoiTho" HeaderText="TuoiTho" SortExpression="TuoiTho" />
			<asp:BoundField DataField="Dacdiem" HeaderText="Dacdiem" SortExpression="Dacdiem" />
			<asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
			<asp:ImageField DataImageUrlField="Anh">
			</asp:ImageField>
			<asp:BoundField DataField="MaPet" HeaderText="MaPet" ReadOnly="True" SortExpression="MaPet" />
			<asp:BoundField DataField="TenPet" HeaderText="TenPet" SortExpression="TenPet" />
			<asp:BoundField DataField="GiongPet" HeaderText="GiongPet" SortExpression="GiongPet" />
			<asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
			<asp:BoundField DataField="CanNang" HeaderText="CanNang" SortExpression="CanNang" />
			<asp:BoundField DataField="TuoiTho" HeaderText="TuoiTho" SortExpression="TuoiTho" />
			<asp:BoundField DataField="Dacdiem" HeaderText="Dacdiem" SortExpression="Dacdiem" />
			<asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
			<asp:BoundField DataField="Anh" HeaderText="Anh" SortExpression="Anh" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PETSHOPConnectionString %>" SelectCommand="SELECT * FROM [InfoPet]"></asp:SqlDataSource>
</asp:Content>
