<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="Presentation.dangky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">

		.auto-style16 {
			text-align: left;
			width: 242px;
			height: 19px;
		}
		.auto-style25 {
			text-align: left;
			width: 328px;
		}
		.auto-style26 {
			width: 360px;
			text-align: left;
		}
		.auto-style27 {
			width: 360px;
			height: 48px;
			text-align: left;
		}
		.auto-style28 {
			text-align: left;
			height: 48px;
			width: 328px;
		}
		.auto-style41 {
			color: #0000CC;
		}
		.auto-style50 {
			height: 55px;
		}
		.auto-style51 {
			color: #0000CC;
			text-align: left;
		}
		.auto-style52 {
		width: 360px;
		text-align: left;
		height: 54px;
	}
	.auto-style53 {
		text-align: left;
		width: 328px;
		height: 54px;
	}
	.auto-style54 {
		text-align: left;
	}
		</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<table>
	<tr>
		<td>
			<div class="auto-style54">
				<span class="auto-style41"><strong><br />
			ĐĂNG KÝ THÔNG TIN KHÁCH HÀNG</strong></div>
			<table>
				<tr>
					<td class="auto-style27">
			<asp:Label ID="Label6" runat="server" Text="Tên đăng nhập" CssClass="auto-style41"></asp:Label>
		&nbsp; </span> <span class="auto-style41"><asp:TextBox ID="txttendn" runat="server" Width="230px" Height="16px" CssClass="auto-style41"></asp:TextBox>
			<asp:RequiredFieldValidator runat="server" ControlToValidate="txttendn" ErrorMessage="Tên đăng nhập không được để trống" ForeColor="Red" ID="RequiredFieldValidator1" CssClass="auto-style41">(*)</asp:RequiredFieldValidator>
					</td>
					<td class="auto-style28">&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style52">
			<asp:Label ID="Label5" runat="server" Text="Email" CssClass="auto-style41"></asp:Label>
						<span class="auto-style41">
						<br />
			<asp:TextBox ID="txtemail" runat="server" Width="230px" CssClass="auto-style41" Height="16px"></asp:TextBox>
			<asp:RegularExpressionValidator ID="rev_ktemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Emai không đúng" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" CssClass="auto-style41">(*)</asp:RegularExpressionValidator>
					</td>
					<td class="auto-style53">
						</td>
				</tr>
				<tr>
					<td class="auto-style26">
			<asp:Label ID="Label2" runat="server" Text="Mật khẩu" CssClass="auto-style41"></asp:Label>
						<span class="auto-style41">
						<br />
			<asp:TextBox ID="txtmatkhau" runat="server" Height="16px" TextMode="Password" Width="230px" CssClass="auto-style41"></asp:TextBox>
			<asp:RequiredFieldValidator ID="rv_matkhau" runat="server" ControlToValidate="txtmatkhau" ErrorMessage="Mật khẩu không được để trống" ForeColor="Red" CssClass="auto-style41">(*)</asp:RequiredFieldValidator>
					</td>
					<td>
						&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style26">
			<asp:Label ID="Label3" runat="server" Text="Nhập lại mật khẩu" CssClass="auto-style41"></asp:Label>
						<span class="auto-style41">
			<asp:TextBox ID="txtnhaplaimk" runat="server" Width="230px" CssClass="auto-style51" TextMode="Password" Height="16px"></asp:TextBox>
			<asp:CompareValidator ID="cpv_nhaplaimk" runat="server" ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplaimk" ErrorMessage="Mật khẩu không được để trống" ForeColor="Red" CssClass="auto-style41">(*)</asp:CompareValidator>
					</td>
					<td class="auto-style25">
						&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style41" />
					</td>
				</tr>
				<tr>
					<td colspan="2" class="auto-style50">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="btndangky" runat="server" OnClick="btndangky_Click" Text="Đăng kí" CssClass="auto-style41" />
						<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label ID="lblthongbao" runat="server" CssClass="auto-style41"></asp:Label>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	</table>
<br class="auto-style41" />
</asp:Content>
