<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="dathang.aspx.cs" Inherits="Presentation.dathang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">

        .auto-style4
        {
            width: 167px;
            height: 20px;
        }
        .auto-style6
        {
            height: 20px;
            width: 379px;
        }
        .auto-style7
        {
            width: 379px;
        }
        .auto-style18 {
			color: #996600;
			text-align: left;
		}
		.auto-style19 {
			text-align: left;
		}
		.auto-style21 {
			width: 175px;
			text-align: left;
		}
		.auto-style23 {
			margin-left: 0px;
		}
	.auto-style41 {
		background-color: #FFFFFF;
	}
	.auto-style42 {
		color: #996600;
		text-align: center;
		background-color: #FFFFFF;
	}
	.auto-style44 {
		height: 20px;
		text-align: left;
	}
		.auto-style45 {
			background-color: #FFFFFF;
			margin-bottom: 0px;
		}
		</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
	</div>
	<table class="auto-style1">
		<tr>
			<th class="auto-style42" colspan="3">ĐƠN ĐẶT HÀNG&nbsp;</th>
		</tr>
		<tr>
			<td class="auto-style21">
				<asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Họ tên khách hàng" CssClass="auto-style41"></asp:Label>
			</td>
			<td class="auto-style19" colspan="2">
				<asp:TextBox ID="txtHoTen" runat="server" OnTextChanged="txtHoTen_TextChanged" Width="235px"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td class="auto-style21">
				<asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Địa chỉ" CssClass="auto-style41"></asp:Label>
			</td>
			<td class="auto-style19" colspan="2">
				<asp:TextBox ID="txtDiaChi" runat="server" Width="235px"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td class="auto-style19">
				<asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Chọn hàng" CssClass="auto-style41"></asp:Label>
			</td>
			<td class="auto-style44" colspan="2">
				<asp:DropDownList ID="drl_dsHangHoa" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TenPet" DataValueField="Gia" OnSelectedIndexChanged="drl_dsHangHoa_SelectedIndexChanged" CssClass="auto-style45">
				</asp:DropDownList>
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PETSHOPConnectionString %>" SelectCommand="SELECT [TenPet], [Gia] FROM [InfoPet]"></asp:SqlDataSource>
			</td>
		</tr>
		<tr>
			<td class="auto-style21">
				<asp:Label runat="server" Font-Bold="True" Text="Đơn giá"></asp:Label>
			</td>
			<td class="auto-style7">
				<asp:TextBox ID="txtDonGia" runat="server" Height="16px" OnTextChanged="txtDonGia_TextChanged" Width="128px" CssClass="auto-style23"></asp:TextBox>
				<asp:Label ID="Label9" runat="server" Font-Bold="True" Height="16px" style="margin-top: 0px" Text="VND" Width="43px"></asp:Label>
			</td>
			<td rowspan="2">
				<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="False" Text="Danh sách hàng đã chọn "></asp:Label>
				<asp:ListBox ID="lsbHangDaChon" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lsbHangDaChon_SelectedIndexChanged" SelectionMode="Multiple" Width="182px"></asp:ListBox>
			</td>
		</tr>
		<tr>
			<td class="auto-style8">
				<asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Số lượng"></asp:Label>
			</td>
			<td class="auto-style9">
				<asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
				<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSoLuong" ErrorMessage="So luong la kieu so" ForeColor="Red" Type="Double">(*)</asp:CompareValidator>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSoLuong" ErrorMessage="So luong khong duoc de trong" ForeColor="Red">(*)</asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td class="auto-style4">
				<asp:Button ID="btn_ChonHang" runat="server" OnClick="btn_ChonHang_Click" Text="Đặt hàng" Width="113px" />
			</td>
			<td class="auto-style6"></td>
			<td class="auto-style44">
				<asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Tổng tiền"></asp:Label>
				<asp:TextBox ID="txtTongTien" runat="server" OnTextChanged="txtTongTien_TextChanged"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td class="auto-style2">&nbsp;</td>
			<td class="auto-style7">&nbsp;</td>
			<td>
				<asp:Button ID="btn_Xoa" runat="server" OnClick="btn_Xoa_Click" Text="Xóa" />
				<asp:Button ID="btn_In" runat="server" Text="In " />
			</td>
		</tr>
	</table>
</asp:Content>
