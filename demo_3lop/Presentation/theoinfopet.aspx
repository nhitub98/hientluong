<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="theoinfopet.aspx.cs" Inherits="Presentation.theoinfopet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
	.auto-style24 {
		width: 79%;
		height: 250px;
	}
	.auto-style25 {
		height: 26px;
	}
	.auto-style26 {
		text-align: center;
	}
		.auto-style42 {
			width: 100%;
		}
		.auto-style43 {
			text-align: center;
		}
		.auto-style46 {
			width: 81px;
			text-align: left;
		}
		.auto-style47 {
			text-align: left;
		}
		.auto-style48 {
			text-align: left;
			width: 13px;
		}
		.auto-style49 {
			width: 81px;
			text-align: left;
			height: 48px;
		}
		.auto-style50 {
			height: 48px;
		}
		.auto-style51 {
			color: #CC3300;
		}
		.auto-style52 {
			color: #FF9933;
		}
		.auto-style53 {
			margin-bottom: 98px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style28" GridLines="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" style="margin-right: 18px" Height="1207px" RepeatColumns="1" ForeColor="Black" RepeatDirection="Horizontal">
	<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
	<HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
	<ItemTemplate>
		<table class="auto-style42">
			<tr>
				<td class="auto-style47" colspan="3"><strong>
					<asp:Label ID="Label1" runat="server" CssClass="auto-style52" Text='<%# Eval("_tenpet") %>'></asp:Label>
					</strong></td>
			</tr>
			<tr>
				<td class="auto-style43" rowspan="4">
					<br />
					<br />
					<br />
					<br />
					<asp:Image ID="Image10" runat="server" CssClass="auto-style53" Height="208px" ImageUrl='<%# Eval("_anh") %>' Width="247px" />
				</td>
				<td class="auto-style46">
					<asp:Label ID="Label7" runat="server" CssClass="auto-style51" Text="Giới tính"></asp:Label>
				</td>
				<td>
					<asp:Label ID="Label2" runat="server" Text='<%# Eval("_gioitinh") %>'></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="auto-style46">
					<asp:Label ID="Label8" runat="server" CssClass="auto-style51" Text="Cân nặng"></asp:Label>
				</td>
				<td>
					<asp:Label ID="Label3" runat="server" Text='<%# Eval("_cannang") %>'></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="auto-style49">
					<asp:Label ID="Label9" runat="server" CssClass="auto-style51" Text="Tuổi thọ"></asp:Label>
				</td>
				<td class="auto-style50">
					<asp:Label ID="Label4" runat="server" Text='<%# Eval("_tuoitho") %>'></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="auto-style46">
					<asp:Label ID="Label11" runat="server" CssClass="auto-style51" Text="Giá"></asp:Label>
				</td>
				<td>
					<asp:Label ID="Label6" runat="server" Text='<%# Eval("_gia","{0:#,##0}VND") %>'></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="auto-style43" colspan="3">
					<asp:Button ID="Mua" runat="server" Text="Mua" />
				</td>
			</tr>
		</table>
	</ItemTemplate>
	<SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
</asp:DataList>
</asp:Content>
