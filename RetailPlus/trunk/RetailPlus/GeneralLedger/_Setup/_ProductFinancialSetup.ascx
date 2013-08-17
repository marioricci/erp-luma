<%@ Control Language="c#" Inherits="AceSoft.RetailPlus.GeneralLedger._Setup.__ProductFinancialSetup" Codebehind="_ProductFinancialSetup.ascx.cs" %>
<script language="JavaScript" src="../../_Scripts/SelectAll.js"></script>
<script language="JavaScript" src="../../_Scripts/ConfirmDelete.js"></script>
<table cellSpacing="0" cellPadding="0" width="100%" border="0">
	<tr>
		<td colSpan="3"><img height="10" alt="" src="../../_layouts/images/blank.gif" width="1" /></td>
	</tr>
	<tr>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
		<TD>
			<table cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td class="ms-descriptiontext" style="PADDING-BOTTOM: 10px; PADDING-TOP: 8px" colSpan="3"><font color="red">*</font>
						Indicates a required field<asp:label id="lblReferrer" runat="server" Visible="False"></asp:label>
					</td>
				</tr>
				<tr>
					<td class="ms-sectionline" colSpan="3" height="1"><IMG alt="" src="../../_layouts/images/empty.gif"></td>
				</tr>
				<TR>
					<td style="PADDING-BOTTOM: 10px" vAlign="top" colSpan="3">
						<table class="ms-authoringcontrols" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr style="PADDING-BOTTOM: 10px">
								<td><IMG alt="" src="../../_layouts/images/company_logo.gif"></td>
								<td style="HEIGHT: 70px" borderColor="white" align="left" colspan="5"><label class="ms-sectionheader" style="FONT-WEIGHT: bold; FONT-SIZE: 40px">
										<asp:label id="lblProductCode" runat="server">Update Financial Links of products.</asp:label></label></td>
							</tr>
						</table>
					</td>
				</TR>
				<tr>
					<td class="ms-sectionline" colSpan="3" height="1"><IMG alt="" src="../../_layouts/images/empty.gif"></td>
				</tr>
				<tr>
					<td style="PADDING-BOTTOM: 20px; HEIGHT: 67px" vAlign="top">
						<div class="ms-sectionheader" style="PADDING-BOTTOM: 8px">Step 1: Products
							Information to be updated</div>
						<div class="ms-descriptiontext" style="PADDING-BOTTOM: 25px">
                            Choose the Product <b>Group</b> to be updated.</div>
						<div class="ms-descriptiontext" style="PADDING-BOTTOM: 25px">
                            Choose the Product <b>Sub-Group</b> to be updated.</div>
						<div class="ms-descriptiontext" style="PADDING-BOTTOM: 20px">
                            Choose the <b>Product Code</b> to be updated.</div>
					</td>
					<td class="ms-colspace" style="HEIGHT: 67px">&nbsp;</td>
					<td class="ms-authoringcontrols ms-formwidth" style="PADDING-RIGHT: 10px; BORDER-TOP: white 1px solid; PADDING-LEFT: 8px; PADDING-BOTTOM: 20px; HEIGHT: 67px" vAlign="top">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
						<table class="ms-authoringcontrols" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td class="ms-authoringcontrols" style="PADDING-BOTTOM: 2px" colSpan="2">
                                    Select product group to be updated<font color="red">*</font></td>
							</tr>
							<tr>
								<td class="ms-formspacer"><IMG alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" width="100%">
                                    <asp:DropDownList ID="cboProductGroup" runat="server" CssClass="ms-long" OnSelectedIndexChanged="cboProductGroup_SelectedIndexChanged">
                                    </asp:DropDownList><span style="color: #ff0000"> </span>
								</td>
							</tr>
							<tr >
								<td class="ms-formspacer"></td>
							</tr>
							<tr >
								<td class="ms-authoringcontrols" style="PADDING-BOTTOM: 2px" colSpan="2">
								    Select product sub group to be updated<font color="red">*</font>
								</td>
							</tr>
							<tr>
								<td class="ms-formspacer"><IMG alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" width="100%">
                                    <asp:DropDownList ID="cboProductSubGroup" runat="server" CssClass="ms-long">
                                    </asp:DropDownList>
								</td>
							</tr>
							<TR>
								<td class="ms-formspacer"></td>
							</TR>
							<tr>
								<td class="ms-authoringcontrols" style="PADDING-BOTTOM: 2px" colSpan="2">
								    Select product code to be updated<font color="red">*</font>
								</td>
							</tr>
							<tr>
								<td class="ms-formspacer"><IMG alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" width="100%">
                                    <asp:DropDownList ID="cboProduct" runat="server" CssClass="ms-long">
                                    </asp:DropDownList>
							</tr>
							<tr>
								<td class="ms-formspacer"></td>
							</tr>
						</table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
					</td>
				</tr>
				<tr>
					<td class="ms-sectionline" colSpan="3" height="1"><IMG alt="" src="../../_layouts/images/empty.gif"></td>
				</tr>
				<tr>
					<td style="PADDING-BOTTOM: 20px; HEIGHT: 67px" vAlign="top">
						<div class="ms-sectionheader" style="PADDING-BOTTOM: 8px">Step 2: Financial
							Information</div>
						<div class="ms-descriptiontext" style="PADDING-BOTTOM: 25px">
                            Choose the account type to be use when buying selected groups or subgroups or items
                            above.</div>
						<div class="ms-descriptiontext" style="PADDING-BOTTOM: 25px">
                            Choose account type to be use when selling selected groups or subgroups or items
                            above.</div>
						<div class="ms-descriptiontext" style="PADDING-BOTTOM: 10px">
                            Choose account type to be use for the inventory selected groups or subgroups or
                            items above.</div>
					</td>
					<td class="ms-colspace" style="HEIGHT: 67px">&nbsp;</td>
					<td class="ms-authoringcontrols ms-formwidth" style="PADDING-RIGHT: 10px; BORDER-TOP: white 1px solid; PADDING-LEFT: 8px; PADDING-BOTTOM: 20px; HEIGHT: 67px" vAlign="top">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
						<table class="ms-authoringcontrols" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td class="ms-authoringcontrols" style="PADDING-BOTTOM: 2px" colSpan="2"><label for="txtAccountNo">
                                    Select account type when buying or purchasing<font color="red">*</font></label></td>
							</tr>
							<tr>
								<td class="ms-formspacer"><IMG alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" width="100%">
                                    &nbsp;<asp:DropDownList ID="cboChartOfAccountPurchase" runat="server" CssClass="ms-long">
                                    </asp:DropDownList><span style="color: #ff0000"> </span>
									<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" CssClass="ms-error" ErrorMessage="'Account Type' must not be left blank." Display="Dynamic" ControlToValidate="cboChartOfAccountPurchase" ForeColor=" "></asp:RequiredFieldValidator>
								</td>
							</tr>
							<tr>
								<td class="ms-formspacer"></td>
							</tr>
							<tr>
								<td class="ms-authoringcontrols" style="PADDING-BOTTOM: 2px" colSpan="2"><label for="txtAccountNo">
                                    Select account type when selling this item<font color="red">*</font></label></td>
							</tr>
							<tr>
								<td class="ms-formspacer"><IMG alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" width="100%">
                                    &nbsp;<asp:DropDownList ID="cboChartOfAccountSold" runat="server" CssClass="ms-long">
                                    </asp:DropDownList>
									<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" CssClass="ms-error" ControlToValidate="cboChartOfAccountSold" Display="Dynamic" ErrorMessage="'Account Type' must not be left blank." ForeColor=" "></asp:RequiredFieldValidator>
								</td>
							</tr>
							<TR>
								<td class="ms-formspacer"></td>
							</TR>
							<tr>
								<td class="ms-authoringcontrols" style="PADDING-BOTTOM: 2px" colSpan="2"><label for="txtAccountNo">
                                    Select account type to be use for inventory of this item<font color="red">*</font></label>
								</td>
							</tr>
							<tr>
								<td class="ms-formspacer"><IMG alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" width="100%">
                                    &nbsp;<asp:DropDownList ID="cboChartOfAccountInventory" runat="server" CssClass="ms-long">
                                    </asp:DropDownList>
									<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" CssClass="ms-error" ControlToValidate="cboChartOfAccountInventory" Display="Dynamic" ErrorMessage="'Account Type' must not be left blank." ForeColor=" "></asp:RequiredFieldValidator></td>
							</tr>
							<TR>
								<TD class="ms-formspacer" style="height: 19px"></TD>
								<TD class="ms-authoringcontrols" width="100%" style="height: 19px"></TD>
							</TR>
						</table>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="cboProductGroup" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
					</td>
				</tr>
				<tr>
					<td class="ms-sectionline" colSpan="3" height="1"><IMG alt="" src="../../_layouts/images/empty.gif"></td>
				</tr>
				<tr>
					<td style="PADDING-BOTTOM: 20px; HEIGHT: 67px" vAlign="top">
						<div class="ms-sectionheader" style="PADDING-BOTTOM: 8px">Step 3: Link accounts for TAX Codes</div>
						<div class="ms-descriptiontext" style="PADDING-BOTTOM: 25px">
                            Choose the TAX ACCOUNT TYPE to be use when buying selected groups or subgroups or
                            items above.</div>
						<div class="ms-descriptiontext" style="PADDING-BOTTOM: 25px">
                            Choose the TAX ACCOUNT TYPE to be use when selling selected groups or subgroups
                            or items above.</div>
					</td>
					<td class="ms-colspace" style="HEIGHT: 67px">&nbsp;</td>
					<td class="ms-authoringcontrols ms-formwidth" style="PADDING-RIGHT: 10px; BORDER-TOP: white 1px solid; PADDING-LEFT: 8px; PADDING-BOTTOM: 20px; HEIGHT: 67px" vAlign="top">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
						<table class="ms-authoringcontrols" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td class="ms-authoringcontrols" style="PADDING-BOTTOM: 2px" colSpan="2"><label for="txtAccountNo">
                                    Select TAX ACCOUNT TYPE when buying or purchasing<font color="red">*</font></label></td>
							</tr>
							<tr>
								<td class="ms-formspacer"><IMG alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" width="100%">
                                    &nbsp;<asp:DropDownList ID="cboChartOfAccountIDTaxPurchase" runat="server" CssClass="ms-long">
                                    </asp:DropDownList><span style="color: #ff0000"> </span>
									<asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" CssClass="ms-error" ErrorMessage="'Account Type' must not be left blank." Display="Dynamic" ControlToValidate="cboChartOfAccountPurchase" ForeColor=" "></asp:RequiredFieldValidator>
								</td>
							</tr>
							<tr>
								<td class="ms-formspacer"></td>
							</tr>
							<tr>
								<td class="ms-authoringcontrols" style="PADDING-BOTTOM: 2px" colSpan="2"><label for="txtAccountNo">
                                    Select TAX ACCOUNT TYPE when selling this item<font color="red">*</font></label></td>
							</tr>
							<tr>
								<td class="ms-formspacer"><IMG alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" width="100%">
                                    &nbsp;<asp:DropDownList ID="cboChartOfAccountIDTaxSold" runat="server" CssClass="ms-long">
                                    </asp:DropDownList>
									<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" CssClass="ms-error" ControlToValidate="cboChartOfAccountSold" Display="Dynamic" ErrorMessage="'Account Type' must not be left blank." ForeColor=" "></asp:RequiredFieldValidator>
								</td>
							</tr>
							<TR>
								<TD class="ms-formspacer"></TD>
								<TD class="ms-authoringcontrols" width="100%"></TD>
							</TR>
						</table>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="cboProductGroup" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
					</td>
				</tr>
				<tr>
					<td class="ms-sectionline" colSpan="3" height="1"><A name="InputFormSection1"></A><IMG alt="" src="../../_layouts/images/empty.gif"></td>
				</tr>
				<tr>
					<td class="ms-sectionline" colSpan="3" height="1">
						<table class="ms-toolbar" id="twotidGrpsTB" style="MARGIN-LEFT: 0px" cellpadding="2" cellspacing="0" border="0" width="100%">
							<TR>
								<td class="ms-toolbar" noWrap align="right" width="99%"><IMG height="1" alt="" src="../../_layouts/images/blank.gif" width="1">
								</td>
								<td class="ms-toolbar">
									<table cellSpacing="0" cellPadding="1" border="0">
										<tr>
										    <td class="ms-toolbar">
						                        <table cellSpacing="0" cellPadding="1" border="0">
							                        <tr>
								                        <td class="ms-toolbar" noWrap><asp:imagebutton id="imgSave" title="Update Product" accessKey="S" tabIndex="1" CssClass="ms-toolbar" runat="server" ImageUrl="../../_layouts/images/saveitem.gif" alt="Update Product" border="0" width="16" height="16" OnClick="imgSave_Click"></asp:imagebutton>&nbsp;
								                        </td>
								                        <td noWrap><asp:linkbutton id="cmdSave" title="Update Product" accessKey="S" tabIndex="2" CssClass="ms-toolbar" runat="server" onclick="cmdSave_Click">Save</asp:linkbutton></td>
							                        </tr>
						                        </table>
					                        </td>
					                        <TD class="ms-separator">|</TD>
					                        <td class="ms-toolbar">
						                        <table cellSpacing="0" cellPadding="1" border="0">
							                        <tr>
								                        <td class="ms-toolbar" noWrap><asp:imagebutton id="imgSaveBack" title="Update Product" accessKey="S" tabIndex="1" CssClass="ms-toolbar" runat="server" ImageUrl="../../_layouts/images/saveitem.gif" alt="Update Product" border="0" width="16" height="16" OnClick="imgSaveBack_Click"></asp:imagebutton>&nbsp;
								                        </td>
								                        <td noWrap><asp:linkbutton id="cmdSaveBack" title="Update Product" accessKey="S" tabIndex="2" CssClass="ms-toolbar" runat="server" onclick="cmdSaveBack_Click">Save and Back</asp:linkbutton></td>
							                        </tr>
						                        </table>
					                        </td>
					                        <TD class="ms-separator">|</TD>
					                        <td class="ms-toolbar">
						                        <table cellSpacing="0" cellPadding="1" border="0">
							                        <tr>
								                        <td class="ms-toolbar" noWrap><asp:imagebutton id="imgCancel" title="Cancel Updating Product" accessKey="C" tabIndex="3" CssClass="ms-toolbar" runat="server" ImageUrl="../../_layouts/images/impitem.gif" alt="Cancel Updating Product" border="0" width="16" height="16" CausesValidation="False" OnClick="imgCancel_Click"></asp:imagebutton></td>
								                        <td noWrap><asp:linkbutton id="cmdCancel" title="Cancel Updating Product" accessKey="C" tabIndex="4" CssClass="ms-toolbar" runat="server" CausesValidation="False" onclick="cmdCancel_Click">Cancel</asp:linkbutton></td>
							                        </tr>
						                        </table>
					                        </td>
											<td class="ms-toolbar" id="align02" noWrap align="right"><IMG height="1" alt="" src="../../_layouts/images/blank.gif" width="1">
											</td>
										</tr>
									</table>
								</td>
							</TR>
						</TABLE>
					</td>
				</tr>
			</table>
		</TD>
	</tr>
	
	<tr>
		<td colSpan="3"><img height="10" alt="" src="../../_layouts/images/blank.gif" width="1" /></td>
	</tr>
</table>
