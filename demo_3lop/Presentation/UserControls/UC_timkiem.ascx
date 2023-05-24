<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_timkiem.ascx.cs" Inherits="Presentation.UserControls.UC_timkiem" %>
<style type="text/css">
	.auto-style1 {
		color: #336699;
	}
	.auto-style2 {
		color: #000066;
	}
</style>
<table>
	<tr>
		<td><span class="auto-style1">Tên pet</span>
			<asp:TextBox ID="txttenpet" runat="server" CssClass="auto-style1" Width="225px" Height="19px" style="margin-left: 0px"></asp:TextBox>
		&nbsp;&nbsp;&nbsp;
			<asp:Button ID="btntimkiem" runat="server" OnClick="Button1_Click" Text="Tìm kiếm" CssClass="auto-style2" />
		</td>
	</tr>
	</table>
<br />
<br />


