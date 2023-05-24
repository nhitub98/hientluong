<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="menu.ascx.cs" Inherits="Presentation.UserControls.menu" %>
<style type="text/css">
	.auto-style1 {
		text-align: right;
	}
	.auto-style2 {
		font-size: medium;
	}
</style>

<div class="auto-style1">
	<h3>
	<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/dathang.aspx" CssClass="auto-style2">Đơn đặt hàng</asp:HyperLink>
		<span class="auto-style2">||</span><asp:Label ID="lblchaomung" runat="server" CssClass="auto-style2"></asp:Label>
	<asp:Button ID="btnthoat" runat="server" OnClick="btnthoat_Click" Text="Thoát" CssClass="auto-style2" />
	</h3>
</div>

