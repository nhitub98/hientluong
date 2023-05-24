<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_left.ascx.cs" Inherits="Presentation.UserControls.UC_left" %>
<asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="251px" Width="141px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Both">
    <FooterStyle BackColor="White" ForeColor="#000066" />
	<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <ItemStyle ForeColor="#000066" />
    <ItemTemplate>
        @<asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("_loai") %>' NavigateUrl='<%# "~/theoinfopet.aspx?maloai="+Eval("_giongpet") %>'></asp:HyperLink>
        <br />
    </ItemTemplate>
	<SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
</asp:DataList>
<asp:Label ID="lblthongbao" runat="server" Text="Label"></asp:Label>
<p>
    &nbsp;</p>


