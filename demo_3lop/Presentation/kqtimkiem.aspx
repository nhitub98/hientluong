<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="kqtimkiem.aspx.cs" Inherits="Presentation.kqtimkiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
		.auto-style24 {
			width: 100%;
		}
		.auto-style42 {
			width: 100%;
		}
		.auto-style47 {
			text-align: left;
		}
		.auto-style52 {
			color: #FF9933;
		}
		.auto-style43 {
			text-align: center;
		}
		.auto-style53 {
			margin-bottom: 98px;
		}
		.auto-style51 {
			color: #CC3300;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br />
	<asp:DataList ID="DataList2" runat="server">
		<ItemTemplate>
			<table class="auto-style42">
				<tr>
					<td class="auto-style47"><strong>
						<asp:Label ID="Label1" runat="server" CssClass="auto-style52" Text='<%# Eval("TenPet") %>'></asp:Label>
						</strong></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td rowspan="4">
						<asp:Image ID="Image10" runat="server" CssClass="auto-style53" Height="208px" ImageUrl='<%# Eval("Anh") %>' Width="247px" />
					</td>
					<td>
						<asp:Label ID="Label7" runat="server" CssClass="auto-style51" Text="Giới tính"></asp:Label>
					</td>
					<td>
						<asp:Label ID="Label2" runat="server" Text='<%# Eval("GioiTinh") %>'></asp:Label>
					</td>
				</tr>
				<tr>
					<td>
						<asp:Label ID="Label8" runat="server" CssClass="auto-style51" Text="Cân nặng"></asp:Label>
					</td>
					<td>
						<asp:Label ID="Label3" runat="server" Text='<%# Eval("CanNang") %>'></asp:Label>
					</td>
				</tr>
				<tr>
					<td>
						<asp:Label ID="Label9" runat="server" CssClass="auto-style51" Text="Tuổi thọ"></asp:Label>
					</td>
					<td>
						<asp:Label ID="Label4" runat="server" Text='<%# Eval("TuoiTho") %>'></asp:Label>
					</td>
				</tr>
				<tr>
					<td>
						<asp:Label ID="Label11" runat="server" CssClass="auto-style51" Text="Giá"></asp:Label>
					</td>
					<td>
						<asp:Label ID="Label6" runat="server" Text='<%# Eval("Gia","{0,0.0}VND") %>'></asp:Label>
					</td>
				</tr>
				<tr>
					<td class="auto-style43" colspan="3">
						<asp:Button ID="Mua" runat="server" Text="Mua" />
					</td>
				</tr>
			</table>
		</ItemTemplate>
	</asp:DataList>
	<asp:Label ID="lblthongbao" runat="server"></asp:Label>
</asp:Content>
