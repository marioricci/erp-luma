<%@ Control Language="c#" Inherits="AceSoft.RetailPlus.MasterFiles._Product._MatrixPackage.__List" Codebehind="_List.ascx.cs" %>
<script language="JavaScript" src="../../../_Scripts/sExpCollapse.js"></script>
<script language="JavaScript" src="../../../_Scripts/SelectAll.js"></script>
<script language="JavaScript" src="../../../_Scripts/ConfirmDelete.js"></script>
<table cellSpacing="0" cellPadding="0" width="100%" border="0">
	<tr>
		<td colSpan="3"><IMG height="10" alt="" src="../../../_layouts/images/blank.gif" width="1"></td>
	</tr>
	<TR>
		<td><IMG height="1" alt="" src="../../../_layouts/images/blank.gif" width="10"></td>
		<TD>
			<table class="ms-toolbar" style="MARGIN-LEFT: 0px" cellpadding="2" cellspacing="0" border="0" width="100%">
				<TR>
					<td class="ms-toolbar">
						<table cellSpacing="0" cellPadding="1" border="0">
							<tr>
								<td class="ms-toolbar" noWrap><asp:imagebutton id="imgAdd" ToolTip="Add New Product Package" accessKey="N" tabIndex="1" height="16" width="16" border="0" alt="Add New Product Package" ImageUrl="../../../_layouts/images/newuser.gif" runat="server" CssClass="ms-toolbar" OnClick="imgAdd_Click"></asp:imagebutton>&nbsp;
								</td>
								<td noWrap><asp:linkbutton id="cmdAdd" ToolTip="Add New Product Package" accessKey="N" tabIndex="2" runat="server" CssClass="ms-toolbar" onclick="cmdAdd_Click">Add Package</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<TD class="ms-separator">
						<asp:Label id="lblSeparator1" runat="server">|</asp:Label></TD>
					<td class="ms-toolbar">
						<table cellSpacing="0" cellPadding="1" border="0">
							<tr>
								<td class="ms-toolbar" noWrap><asp:imagebutton id="imgDelete" ToolTip="Remove Selected Product Package" accessKey="X" tabIndex="3" height="16" width="16" border="0" alt="Remove Selected Product Package" ImageUrl="../../../_layouts/images/delitem.gif" runat="server" CssClass="ms-toolbar" OnClick="imgDelete_Click"></asp:imagebutton></td>
								<td noWrap><asp:linkbutton id="cmdDelete" ToolTip="Remove Selected Product Package" accessKey="X" tabIndex="4" runat="server" CssClass="ms-toolbar" onclick="cmdDelete_Click">Remove Selected Package</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<TD class="ms-separator">
						<asp:Label id="lblSeparator2" runat="server">|</asp:Label></TD>
					<td class="ms-toolbar">
						<table cellSpacing="0" cellPadding="1" border="0">
							<tr>
								<td class="ms-toolbar" noWrap><asp:imagebutton id="idEdit" ToolTip="Edit Selected Product Package" accessKey="E" tabIndex="5" height="16" width="16" border="0" alt="Update Selected Product Package" ImageUrl="../../../_layouts/images/edit.gif" runat="server" CssClass="ms-toolbar" OnClick="idEdit_Click"></asp:imagebutton></td>
								<td noWrap><asp:linkbutton id="cmdEdit" ToolTip="Edit Selected Product Package" accessKey="E" tabIndex="6" runat="server" CssClass="ms-toolbar" onclick="cmdEdit_Click">Edit Selected Package</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<TD class="ms-separator">
						<asp:Label id="Label1" runat="server">|</asp:Label></TD>
					<td class="ms-toolbar">
						<table cellSpacing="0" cellPadding="1" border="0">
							<tr>
								<td class="ms-toolbar" noWrap><asp:imagebutton id="idBack" title="Back To Matrix List" accessKey="B" tabIndex="5" height="16" width="16" border="0" alt="Back To Matrix List" ImageUrl="../../../_layouts/images/edit.gif" runat="server" CssClass="ms-toolbar" OnClick="idBack_Click"></asp:imagebutton></td>
								<td noWrap><asp:linkbutton id="cmdBack" title="Back To Matrix List" accessKey="B" tabIndex="6" runat="server" CssClass="ms-toolbar" onclick="cmdBack_Click">Back To Matrix List</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<TD class="ms-toolbar" id="align01" noWrap align="right" width="99%">
						<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
							<TR>
								<td class="ms-toolbar" noWrap align="right"><asp:label id="lblDataCount1" runat="server" CssClass="Normal"> Go to page </asp:label><asp:dropdownlist id="cboCurrentPage" runat="server" AutoPostBack="True" onselectedindexchanged="cboCurrentPage_SelectedIndexChanged">
										<asp:ListItem Value="1" Selected="True">1</asp:ListItem>
									</asp:dropdownlist><asp:label id="lblDataCount" runat="server" CssClass="class=ms-vb-user"> of 0</asp:label></td>
							</TR>
						</TABLE>
					</TD>
					<td class="ms-toolbar" id="align02" noWrap align="right"><IMG height="1" alt="" src="../../../_layouts/images/blank.gif" width="1">
					</td>
				</TR>
			</TABLE>
			<asp:Label id="lblMatrixID" runat="server" Visible="False"></asp:Label>
			<asp:Label id="lblProductID" runat="server" Visible="False"></asp:Label>
		</TD>
		<td><IMG height="1" alt="" src="../../../_layouts/images/blank.gif" width="10"></td>
	</TR>
	<tr>
		<td><IMG height="1" alt="" src="../../../_layouts/images/blank.gif" width="10"></td>
		<TD>
			<table cellSpacing="0" cellPadding="0" width="100%" border="0">
				<COLGROUP>
					<col width="1">
					<col width="25%">
					<col width="25%">
					<col width="50%">
				</COLGROUP>
				<tr>
					<th class="ms-vh2">
						<IMG height="10" alt="" src="../../../_layouts/images/blank.gif" width="1"></th>
					<th class="ms-vh2">
						<IMG height="5" alt="" src="../../../_layouts/images/blank.gif" width="1"></th>
					<th class="ms-vh2">
						<IMG height="5" alt="" src="../../../_layouts/images/blank.gif" width="1"></th>
					<th class="ms-vh2">
						<IMG height="5" alt="" src="../../../_layouts/images/blank.gif" width="1"></th>
				</tr>
				<tr>
					<td class="ms-vb2" style="PADDING-RIGHT: 15px; BORDER-TOP: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px"><input id="idSelectAll" onclick="SelectAll();" type="checkbox" name="selectall" />
					</td>
					<td class="ms-vb2" style="BORDER-TOP: 0px"><label for="idSelectAll"><B>Select All</B></label></td>
					<td class="ms-vb2" style="BORDER-TOP: 0px" colSpan="2"><IMG height="1" alt="" src="../../../_layouts/images/blank.gif" width="1"></td>
				</tr>
				<tr>
					<td colSpan="4" height="5"><IMG height="1" alt="" src="../../../_layouts/images/blank.gif" width="10"></td>
				</tr>
			</table>
			<asp:datalist id="lstItem" runat="server" CellPadding="0" ShowFooter="False" Width="100%" OnItemDataBound="lstItem_ItemDataBound">
				<HeaderTemplate>
					<table width="100%" cellpadding="0" cellspacing="0" border="0" id="tblHeaderTemplate">
						<colgroup>
							<col width="4%">
							<col width="20%" align="left">
							<col width="15%" align="left">
							<col width="15%" align="left">
							<col width="15%" align="left">
							<col width="10%" align="left">
							<col width="10%" align="left">
							<col width="10%" align="left">
							<col width="1%">
						</colgroup>
						<TR>
							<TH class="ms-vh2" style="padding-bottom: 4px">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
							<TH class="ms-vh2" style="padding-bottom: 4px">
								<asp:hyperlink id="SortByUnit" runat="server">Unit</asp:hyperlink></TH>
							<TH class="ms-vh2" style="padding-bottom: 4px">
								<asp:hyperlink id="SortByQuantity" runat="server">Quantity</asp:hyperlink></TH>
							<TH class="ms-vh2" style="padding-bottom: 4px">
								<asp:hyperlink id="SortByPurchasePrice" runat="server">Purchase Price</asp:hyperlink></TH>
							<TH class="ms-vh2" style="padding-bottom: 4px">
								<asp:hyperlink id="SortByPrice" runat="server">Selling Price</asp:hyperlink></TH>
							<TH class="ms-vh2" style="padding-bottom: 4px">
								<asp:hyperlink id="SortByVAT" runat="server">VAT</asp:hyperlink></TH>
							<TH class="ms-vh2" style="padding-bottom: 4px">
								<asp:hyperlink id="SortByEVAT" runat="server">eVAT</asp:hyperlink></TH>
							<TH class="ms-vh2" style="padding-bottom: 4px">
								<asp:hyperlink id="SortByLocalTax" runat="server">Local Tax</asp:hyperlink></TH>
							<TH class="ms-vh2" style="padding-bottom: 4px">
							</TH>
						</TR>
					</table>
				</HeaderTemplate>
				<ItemTemplate>
					<TABLE id="tblItemTemplate" cellSpacing="0" cellPadding="0" width="100%" border="0" onmouseover="this.bgColor='#FFE303'" onmouseout="this.bgColor='transparent'">
						<colgroup>
							<col width="4%">
							<col width="20%" align="left">
							<col width="15%" align="left">
							<col width="15%" align="left">
							<col width="15%" align="left">
							<col width="10%" align="left">
							<col width="10%" align="left">
							<col width="10%" align="left">
							<col width="1%">
						</colgroup>
						<TR>
							<TD class="ms-vb-user">
								<input type="checkbox" id="chkList" runat="server" name="chkList" />
							</TD>
							<TD class="ms-vb-user">
								<asp:Label ID="lblUnitName" Runat="server"></asp:Label>
							</TD>
							<TD class="ms-vb-user">
								<asp:Label ID="lblQuantity" Runat="server"></asp:Label>
							</TD>
							<TD class="ms-vb-user">
								<asp:Label ID="lblPurchasePrice" Runat="server"></asp:Label>
							</TD>
							<TD class="ms-vb-user">
								<asp:Label ID="lblPrice" Runat="server"></asp:Label>
							</TD>
							<TD class="ms-vb-user">
								<asp:Label ID="lblVAT" Runat="server"></asp:Label>
							</TD>
							<TD class="ms-vb-user">
								<asp:Label ID="lblEVAT" Runat="server"></asp:Label>
							</TD>
							<TD class="ms-vb-user">
								<asp:Label ID="lblLocalTax" Runat="server"></asp:Label>
							</TD>
							<TD class="ms-vb2"><A class="DropDown" id="anchorDown" href="" runat="server">
									<asp:Image id="divExpCollAsst_img" ImageUrl="../../../_layouts/images/DLMAX.gif" runat="server" alt="Show" Visible="False"></asp:Image></A>
							</TD>
						</TR>
					</table>
				</ItemTemplate>
			</asp:datalist></TD>
		<td><IMG height="1" alt="" src="../../../_layouts/images/blank.gif" width="10"></td>
	</tr>
	<tr>
		<td colSpan="3"><IMG height="10" alt="" src="../../../_layouts/images/blank.gif" width="1"></td>
	</tr>
</table>
