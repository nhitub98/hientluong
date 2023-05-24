<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="Presentation.dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">

		.auto-style14 {
			width: 305px;
			height: 120px;
		}
		.auto-style10 {
		text-align: center;
		color: #00CC00;
		height: 24px;
	}
		.auto-style12 {
			margin-left: 44px;
			text-align: center;
		}
		.auto-style15 {
			width: 57%;
			height: 16px;
			margin-left: 44px;
		}
		.auto-style24 {
			width: 100%;
		}
		.auto-style41 {
			color: #0033CC;
			background-color: #FFFFFF;
		}
		.auto-style42 {
			color: #000099;
		}
		</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<table class="auto-style14">
	<tr>
		<td class="auto-style10"><strong><span class="auto-style41">ĐĂNG NHẬP&nbsp;</span><br />
			</strong>
			<table class="auto-style24">
				<tr>
					<td>
			<asp:Label ID="Label1" runat="server" Text="Tên đăng nhập" CssClass="auto-style42"></asp:Label>
					</td>
					<td>
			<asp:TextBox ID="txttendn" runat="server" Width="222px"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td>
			<asp:Label ID="Label2" runat="server" Text="Mật khẩu" CssClass="auto-style42"></asp:Label>
					</td>
					<td>
			<asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password" Width="227px"></asp:TextBox>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="auto-style12">
			<asp:Button ID="btndangnhap" runat="server" OnClick="btndangnhap_Click" Text="Đăng nhập" CssClass="auto-style42" />
		</td>
	</tr>
	<tr>
		<td>
			<asp:Label ID="lblthongbao" runat="server"></asp:Label>
		</td>
	</tr>
</table>
<br />
</asp:Content>
