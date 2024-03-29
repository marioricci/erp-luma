<%@ Control Language="c#" Inherits="AceSoft.RetailPlus.PurchasesAndPayables._DebitMemo.__Cancel" Codebehind="_Cancel.ascx.cs" %>
<script language="JavaScript" src="../../_Scripts/SelectAll.js"></script>
<script language="JavaScript" src="../../_Scripts/ConfirmDelete.js"></script>
<script language="JavaScript" src="../../_Scripts/PurchasesAndPayables.js"></script>
<table cellspacing="0" cellpadding="0" width="100%" border="0">
	<tr>
		<td colspan="3"><img height="10" alt="" src="../../_layouts/images/blank.gif" width="1"/></td>
	</tr>
	<tr>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
		<td>
			<table class="ms-toolbar" style="margin-left: 0px" cellpadding="2" cellspacing="0" border="0" width="100%">
				<tr>
					<td class="ms-toolbar">
                        <asp:UpdatePanel id="updPrint" runat="server">
                            <ContentTemplate>
						        <table cellspacing="0" cellpadding="1" border="0">
							        <tr>
								        <td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgPrint" title="Print this Purchase Debit Memo" accesskey="G" tabIndex="5" height="16" width="16" border="0" alt="Print this Purchase Debit Memo" ImageUrl="../../_layouts/images/print.gif" runat="server" CssClass="ms-toolbar" CausesValidation="False" OnClick="imgPrint_Click"></asp:imagebutton></td>
								        <td nowrap="nowrap"><asp:linkbutton id="cmdPrint" title="Print this Purchase Debit Memo" accesskey="E" tabIndex="6" runat="server" CssClass="ms-toolbar" CausesValidation="False" onclick="cmdPrint_Click">Print</asp:linkbutton></td>
							        </tr>
						        </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
					</td>
					<td class="ms-separator"><asp:label id="Label12" runat="server">|</asp:label></td>
					<td class="ms-toolbar">
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgCancel" title="Back To Debit Memo List" accesskey="C" tabIndex="3" height="16" width="16" border="0" alt="Back To Debit Memo List" ImageUrl="../../_layouts/images/impitem.gif" runat="server" CssClass="ms-toolbar" CausesValidation="False" OnClick="imgCancel_Click"></asp:imagebutton></td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdCancel" title="Back To Debit Memo List" accesskey="C" tabIndex="4" runat="server" CssClass="ms-toolbar" CausesValidation="False" onclick="cmdCancel_Click">Back To Debit Memo List</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-toolbar" id="align02" nowrap="nowrap" align="right" width="99%"><img height="1" alt="" src="../../_layouts/images/blank.gif" width="1">
					</td>
				</tr>
			</table>
		</td>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
	</tr>
	<tr>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
		<td>
			<table cellspacing="0" cellpadding="0" width="100%" border="0">
				<tr>
					<td class="ms-descriptiontext" colspan="3">
						<asp:label id="lblDebitMemoID" runat="server" visible="False"></asp:label>
						<asp:label id="lblReferrer" runat="server" visible="False"></asp:label>
					</td>
				</tr>
				<tr>
					<td class="ms-sectionline" colspan="3" height="1"><img alt="" src="../../_layouts/images/empty.gif" /></td>
				</tr>
				<tr>
					<td style="padding-bottom: 10px" valign="top" colspan="3">
						<table class="ms-authoringcontrols" cellspacing="0" cellpadding="0" width="100%" border="0">
							<tr style="padding-bottom: 10px">
								<td class="ms-formspacer"></td>
								<td width="30%" rowspan="4"><img alt="" src="../../_layouts/images/company_logo.gif" /></td>
								<td class="ms-formspacer"></td>
								<td style="HEIGHT: 70px" borderColor="white" align="center" width="40%" rowspan="3"><label class="ms-sectionheader" style="FONT-WEIGHT: bold; FONT-SIZE: 40px">Purchase 
										Debit Memo</label></td>
								<td style="padding-bottom: 2px" width="30%" colspan="2"><label>Purchase Debit Memo no:</label></td>
							</tr>
							<tr style="padding-bottom: 5px">
								<td class="ms-formspacer"></td>
								<td class="ms-formspacer"></td>
								<td class="ms-formspacer"><img alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td style="padding-bottom: 2px" width="30%">
									<asp:label id="lblMemoNo" CssClass="ms-error" runat="server"></asp:label></td>
							</tr>
							<tr style="padding-bottom: 5px">
								<td class="ms-formspacer" style="HEIGHT: 52px"></td>
								<td class="ms-formspacer" style="HEIGHT: 52px"></td>
								<td style="padding-bottom: 2px; HEIGHT: 52px" valign="top" width="30%" colspan="2"><label>Date 
										Prepared: </label>
									<asp:label id="lblMemoDate" CssClass="ms-error" runat="server"></asp:label></td>
							</tr>
							<tr style="padding-bottom: 20px">
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="30%" colspan="2"><label>Supplier 
										Name:</label></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="40%" colspan="2"><label>Contact:</label></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="30%" colspan="2"><label>Terms:</label></td>
							</tr>
							<tr style="padding-bottom: 5px">
								<td class="ms-formspacer"><img alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="30%"><asp:label id="lblSupplierID" runat="server" CssClass="ms-error" visible="False"></asp:label>
									<asp:HyperLink id="lblSupplierCode" runat="server" Target="_blank">lblSupplierCode</asp:HyperLink></td>
								<td class="ms-formspacer"><img alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="40%"><asp:label id="lblSupplierContact" runat="server" CssClass="ms-error"></asp:label></td>
								<td class="ms-formspacer"><img alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="30%"><asp:label id="lblTerms" runat="server" CssClass="ms-error"></asp:label><asp:label id="lblModeOfterms" runat="server" CssClass="ms-error"></asp:label></td>
							</tr>
							<tr>
								<td class="ms-formspacer" colspan="6"></td>
							</tr>
							<tr style="padding-bottom: 5px">
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="30%" colspan="2"><label>Supplier 
										Address:</label></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="40%" colspan="2"><label>Telephone 
										no:</label></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="30%" colspan="2"><label>Required 
										Delivery Date:</label></td>
							</tr>
							<tr style="padding-bottom: 5px">
								<td class="ms-formspacer"><img alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="30%"><asp:label id="lblSupplierAddress" runat="server" CssClass="ms-error"></asp:label></td>
								<td class="ms-formspacer"><img alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="40%"><asp:label id="lblSupplierTelephoneNo" runat="server" CssClass="ms-error"></asp:label></td>
								<td class="ms-formspacer"><img alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="30%">
									<asp:label id="lblRequiredPostingDate" CssClass="ms-error" runat="server"></asp:label></td>
							</tr>
							<tr>
								<td class="ms-formspacer" colspan="6"></td>
							</tr>
							<tr style="padding-bottom: 5px">
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="30%" colspan="2"><label>Deliver 
										to branch: (Specify complete address)</label></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="40%" colspan="4"><label>Branch 
										Address:</label></td>
							</tr>
							<tr style="padding-bottom: 5px">
								<td class="ms-formspacer"><img alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="30%"><asp:label id="lblBranchCode" runat="server" CssClass="ms-error"></asp:label><asp:label id="lblBranchID" runat="server" CssClass="ms-error" visible="False"></asp:label></td>
								<td class="ms-formspacer"><img alt="" src="../../_layouts/images/trans.gif" width="10"></td>
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="40%" colspan="3"><asp:label id="lblBranchAddress" runat="server" CssClass="ms-error"></asp:label></td>
							</tr>
							<tr>
								<td class="ms-formspacer" colspan="6"></td>
							</tr>
							<tr style="padding-bottom: 5px">
								<td class="ms-authoringcontrols" style="padding-bottom: 2px" width="30%" colspan="6"><label>PO 
										Remarks:</label>
									<asp:label id="lblRemarks" CssClass="ms-error" runat="server"></asp:label></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="ms-sectionline" colspan="3" height="1"><img alt="" src="../../_layouts/images/empty.gif" /></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
		<td>
		    <asp:datalist id="lstItem" runat="server" Width="100%" CellPadding="0" OnItemDataBound="lstItem_ItemDataBound">
                <HeaderTemplate>
	                <table width="100%" cellpadding="0" cellspacing="0" border="0" id="tblHeaderTemplate">
		                <colgroup>
			                <col width="10">
			                <col width="20%">
			                <col width="20%">
			                <col width="12%">
			                <col width="12%">
			                <col width="12%">
			                <col width="12%">
			                <col width="12%">
			                <col width="10">
		                </colgroup>
		                <tr>
			                <TH class="ms-vh2" style="padding-bottom: 4px; padding-top: 4px"></TH>
			                <TH class="ms-vh2" style="padding-bottom: 4px; padding-top: 4px"><asp:hyperlink id="SortByDescription" runat="server">Description</asp:hyperlink></TH>
			                <TH class="ms-vh2" style="padding-bottom: 4px; padding-top: 4px"><asp:hyperlink id="SortByMatrixDescription" runat="server">Matrix Desc.</asp:hyperlink></TH>
			                <TH class="ms-vh2" style="padding-bottom: 4px; padding-top: 4px; text-align: right"><asp:hyperlink id="SortByQuantity" runat="server">Quantity</asp:hyperlink></TH>
			                <TH class="ms-vh2" style="padding-bottom: 4px; padding-top: 4px"><asp:hyperlink id="SortByProductUnitCode" runat="server">Unit of Measure</asp:hyperlink></TH>
			                <TH class="ms-vh2" style="padding-bottom: 4px; padding-top: 4px; text-align: right"><asp:hyperlink id="SortByUntCost" runat="server">Unit Cost</asp:hyperlink></TH>
			                <TH class="ms-vh2" style="padding-bottom: 4px; padding-top: 4px; text-align: right"><asp:hyperlink id="SortByDiscount" runat="server">Discount</asp:hyperlink></TH>
			                <TH class="ms-vh2" style="padding-bottom: 4px; padding-top: 4px; text-align: right"><asp:hyperlink id="SortByAmount" runat="server">Total Cost</asp:hyperlink></TH>
			                <TH class="ms-vh2" style="padding-bottom: 4px; padding-top: 4px"></TH>
		                </tr>
                </HeaderTemplate>
                <ItemTemplate>
		                <tr onmouseover="this.bgColor='#FFE303'" onmouseout="this.bgColor='transparent'">
			                <td class="ms-vb-user">
				                <input type="checkbox" id="chkList" runat="server" name="chkList" visible="false" />
			                </td>
			                <td class="ms-vb-user">
				                <asp:HyperLink id="lnkDescription" Runat="server" Target="_blank"></asp:HyperLink>
			                </td>
			                <td class="ms-vb-user">
				                <asp:HyperLink id="lnkMatrixDescription" Runat="server" Target="_blank"></asp:HyperLink>
			                </td>
			                <td class="ms-vb-user" style="text-align: right">
				                <asp:Label id="lblQuantity" Runat="server"></asp:Label>&nbsp;&nbsp;
			                </td>
			                <td class="ms-vb-user">
				                <asp:Label id="lblProductUnitID" Runat="server" visible="False"></asp:Label>
				                <asp:Label id="lblProductUnitCode" Runat="server"></asp:Label>
			                </td>
			                <td class="ms-vb-user" style="text-align: right">
				                <asp:Label id="lblUnitCost" Runat="server"></asp:Label>
			                </td>
			                <td class="ms-vb-user" style="text-align: right">
				                <asp:Label id="lblDiscountApplied" Runat="server"></asp:Label>
				                <asp:Label id="lblPercent" Runat="server" visible="False">%</asp:Label>
			                </td>
			                <td class="ms-vb-user" style="text-align: right">
				                <asp:Label id="lblAmount" Runat="server"></asp:Label>
			                </td>
			                <td class="ms-vb2">
				                <A class="DropDown" id="anchorDown" href="" runat="server">
					                <asp:Image id="divExpCollAsst_img" ImageUrl="../../_layouts/images/DLMAX.gif" runat="server" alt="Show"></asp:Image></A>
			                </td>
		                </tr>
		                <tr>
			                <td class="ms-vh2" height="1"><img height="5" alt="" src="../../_layouts/images/blank.gif" width="1"></td>
			                <td colspan="7" height="1">
				                <div class="ACECollapsed" id="divExpCollAsst" runat="server" border="0">
					                <asp:panel id="panItem" runat="server" Width="100%" Height="100%" CssClass="ms-authoringcontrols">
						                <table id="tblpanItem" cellspacing="0" cellpadding="0" width="100%" border="0">
							                <tr>
								                <td class="ms-formspacer" colspan="1"><img alt="" src="../../_layouts/images/trans.gif" width="10"></td>
							                </tr>
							                <tr>
								                <td width="19%">
									                <asp:Label id="Label4" CssClass="ms-vh2" runat="server" text="<b>VAT</b>"></asp:Label>
								                </td>
								                <td width="1%">
									                <asp:Label id="Label7" CssClass="ms-vh2" runat="server" text="<b>:</b>"></asp:Label>
								                </td>
								                <td width="20%">
									                <asp:Label id="lblVAT" CssClass="ms-vb2" runat="server"></asp:Label>
								                </td>
								                <td width="19%">
									                <asp:Label id="Label5" CssClass="ms-vh2" runat="server" text="<b>eVAT</b>"></asp:Label>
								                </td>
								                <td width="1%">
									                <asp:Label id="Label9" CssClass="ms-vh2" runat="server" text="<b>:</b>"></asp:Label>
								                </td>
								                <td width="40%">
									                <asp:Label id="lblEVAT" CssClass="ms-vb2" runat="server"></asp:Label>
								                </td>
							                </tr>
							                <tr>
								                <td width="19%">
									                <asp:Label id="Label6" CssClass="ms-vh2" runat="server" text="<b>Local Tax</b>"></asp:Label>
								                </td>
								                <td width="1%">
									                <asp:Label id="Label11" CssClass="ms-vh2" runat="server" text="<b>:</b>"></asp:Label>
								                </td>
								                <td width="20%">
									                <asp:Label id="lblLocalTax" CssClass="ms-vb2" runat="server"></asp:Label>
								                </td>
								                <td width="19%">
									                <asp:Label id="Label13" CssClass="ms-vh2" runat="server" text="<b>VAT Inclusive</b>"></asp:Label>
								                </td>
								                <td width="1%">
									                <asp:Label id="Label14" CssClass="ms-vh2" runat="server" text="<b></b>"></asp:Label>
								                </td>
								                <td width="40%">
									                <asp:Label id="lblisVATInclusive" CssClass="ms-vb2" runat="server"></asp:Label>
								                </td>
							                </tr>
							                <tr>
								                <td width="19%">
									                <asp:Label id="Label8" CssClass="ms-vh2" runat="server" text="<b>Remarks</b>"></asp:Label>
								                </td>
								                <td width="1%">
									                <asp:Label id="Label10" CssClass="ms-vh2" runat="server" text="<b>:</b>"></asp:Label>
								                </td>
								                <td colspan="4">
									                <asp:Label id="lblRemarks" CssClass="ms-vb2" Runat="server"></asp:Label>
								                </td>
							                </tr>
						                </table>
					                </asp:panel></div>
			                </td>
			                <td class="ms-vh2" height="1"><img height="5" alt="" src="../../_layouts/images/blank.gif" width="1"></td>
		                </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:datalist>
		</td>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
	</tr>
	<tr>
		<td colspan="3"><img height="10" alt="" src="../../_layouts/images/blank.gif" width="1"/></td>
	</tr>
	<tr>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
		<td>
			<table cellspacing="0" cellpadding="0" width="100%" border="0">
				<tr>
					<td class="ms-sectionline" colspan="3" height="1"><img alt="" src="../../_layouts/images/empty.gif" /></td>
				</tr>
				<tr>
					<td valign="top" colspan="3">
		                <table class="ms-authoringcontrols" cellspacing="0" cellpadding="0" width="100%" border="0">
		                    <tr style="padding-bottom: 15px">
				                <td class="ms-formspacer"></td>
				                <td width="50%"></td>
				                <td align="left"><label>   &nbsp; &nbsp; <b>Total Before Discount:</b></label></td>
				                <td align="right"><asp:label id="lblTotalDiscount1" runat="server" CssClass="ms-error">0.00</asp:label></td>
			                </tr>
			                <tr style="padding-bottom: auto">
				                <td class="ms-formspacer"></td>
				                <td></td>
				                <td align="left"><label>   &nbsp; &nbsp; Applicable Discount (1):</label></td>
				                <td align="right"><asp:textbox onkeypress="AllNum()" id="txtPODebitMemoDiscountApplied" accesskey="" runat="server" CssClass="ms-short-numeric-disabled" BorderStyle="Groove" Text=0 Width="82px" AutoPostBack="True" ReadOnly="True"></asp:textbox><asp:dropdownlist id="cboPODebitMemoDiscountType" runat="server" CssClass="ms-short-disabled" AutoPostBack="True" Enabled="False">
                                    <asp:ListItem Value="0">NA</asp:ListItem>
                                    <asp:ListItem Value="1">amt</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="2">%</asp:ListItem>
                                </asp:dropdownlist>
                                <asp:requiredfieldvalidator id="Requiredfieldvalidator6" runat="server" CssClass="ms-error" ControlToValidate="txtPODebitMemoDiscountApplied" Display="Dynamic" ErrorMessage="'Discount' must not be left blank."></asp:requiredfieldvalidator></td>
			                </tr>
			                <tr style="padding-bottom: 15px">
				                <td class="ms-formspacer"></td>
				                <td></td>
				                <td align="left"><label>   &nbsp; &nbsp; Subtotal Discount (1):</label></td>
				                <td align="right"><asp:label id="lblPODebitMemoDiscount" runat="server" CssClass="ms-error">0.00</asp:label></td>
			                </tr>
			                <tr>
				                <td></td>
				                <td></td>
				                <td class="ms-sectionline" colspan="2" height="1"><img alt="" src="../../_layouts/images/empty.gif" /></td>
			                </tr>
			                <tr style="padding-bottom: 15px">
				                <td class="ms-formspacer"></td>
				                <td width="50%"></td>
				                <td align="left"><label>   &nbsp; &nbsp; <b>Total Before Discount:</b></label></td>
				                <td align="right"><asp:label id="lblTotalDiscount2" runat="server" CssClass="ms-error">0.00</asp:label></td>
			                </tr>
			                <tr style="padding-bottom: auto">
				                <td class="ms-formspacer"></td>
				                <td></td>
				                <td align="left"><label>   &nbsp; &nbsp; Applicable Discount (2):</label></td>
				                <td align="right"><asp:textbox onkeypress="AllNum()" id="txtPODebitMemoDiscount2Applied" accesskey="" runat="server" CssClass="ms-short-numeric-disabled" BorderStyle="Groove" Text=0 Width="82px" AutoPostBack="True" ReadOnly="True"></asp:textbox><asp:dropdownlist id="cboPODebitMemoDiscount2Type" runat="server" CssClass="ms-short-disabled" AutoPostBack="True" Enabled="False">
                                    <asp:ListItem Value="0">NA</asp:ListItem>
                                    <asp:ListItem Value="1">amt</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="2">%</asp:ListItem>
                                </asp:dropdownlist>
                                <asp:requiredfieldvalidator id="Requiredfieldvalidator16" runat="server" CssClass="ms-error" ControlToValidate="txtPODebitMemoDiscount2Applied" Display="Dynamic" ErrorMessage="'Discount' must not be left blank."></asp:requiredfieldvalidator></td>
			                </tr>
			                <tr style="padding-bottom: 15px">
				                <td class="ms-formspacer"></td>
				                <td width="50%"></td>
				                <td align="left"><label>   &nbsp; &nbsp; Subtotal Discount (2):</b></label></td>
				                <td align="right"><asp:label id="lblPODebitMemoDiscount2" runat="server" CssClass="ms-error">0.00</asp:label></td>
			                </tr>
			                <tr>
				                <td></td>
				                <td></td>
				                <td class="ms-sectionline" colspan="2" height="1"><img alt="" src="../../_layouts/images/empty.gif" /></td>
			                </tr>
			                <tr style="padding-bottom: 15px">
				                <td class="ms-formspacer"></td>
				                <td width="50%"></td>
				                <td align="left"><label>   &nbsp; &nbsp; <b>Total Before Discount:</b></label></td>
				                <td align="right"><asp:label id="lblTotalDiscount3" runat="server" CssClass="ms-error">0.00</asp:label></td>
			                </tr>
			                <tr style="padding-bottom: auto">
				                <td class="ms-formspacer"></td>
				                <td></td>
				                <td align="left"><label>   &nbsp; &nbsp; Applicable Discount (3):</label></td>
				                <td align="right"><asp:textbox onkeypress="AllNum()" id="txtPODebitMemoDiscount3Applied" accesskey="" runat="server" CssClass="ms-short-numeric-disabled" BorderStyle="Groove" Text=0 Width="82px" AutoPostBack="True" ReadOnly="True"></asp:textbox><asp:dropdownlist id="cboPODebitMemoDiscount3Type" runat="server" CssClass="ms-short-disabled" AutoPostBack="True" Enabled="False">
                                    <asp:ListItem Value="0">NA</asp:ListItem>
                                    <asp:ListItem Value="1">amt</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="2">%</asp:ListItem>
                                </asp:dropdownlist>
                                <asp:requiredfieldvalidator id="Requiredfieldvalidator17" runat="server" CssClass="ms-error" ControlToValidate="txtPODebitMemoDiscount3Applied" Display="Dynamic" ErrorMessage="'Discount' must not be left blank."></asp:requiredfieldvalidator></td>
			                </tr>
			                <tr style="padding-bottom: 25px">
				                <td class="ms-formspacer"></td>
				                <td width="50%"></td>
				                <td align="left"><label>   &nbsp; &nbsp; Subtotal Discount (3):</label></td>
				                <td align="right"><asp:label id="lblPODebitMemoDiscount3" runat="server" CssClass="ms-error">0.00</asp:label></td>
			                </tr>
			                <tr>
				                <td class="ms-formspacer"></td>
				                <td></td>
				                <td class="ms-sectionline" colspan="2" height="1"><img alt="" src="../../_layouts/images/empty.gif" /></td>
			                </tr>
			                <tr style="PADDING-TOP: 5px;padding-bottom: 5px">
				                <td class="ms-formspacer"></td>
				                <td></td>
				                <td align="left"><label><b>VATable Amount:</b></label><asp:CheckBox id="chkIsVatInclusive" runat="server" Checked="true" Text="(Is-Vat-Inclusive)" Enabled="false" AutoPostBack="true"/></td>
				                <td align="right"><asp:label id="lblPODebitMemoVatableAmount" runat="server" CssClass="ms-error">0.00</asp:label></td>
			                </tr>
			                <tr style="padding-bottom: 5px">
				                <td class="ms-formspacer"></td>
				                <td width="50%"></td>
				                <td align="left"><label><b>Subtotal:</b></label></td>
				                <td align="right"><asp:label id="lblPODebitMemoSubTotal" runat="server" CssClass="ms-error">0.00</asp:label></td>
			                </tr>
			                <tr style="padding-bottom: 5px">
				                <td class="ms-formspacer"></td>
				                <td></td>
				                <td align="left"><label><b>VAT:</b></label></td>
				                <td align="right"><asp:label id="lblPODebitMemoVAT" runat="server" CssClass="ms-error">0.00</asp:label></td>
			                </tr>
			                <tr style="padding-bottom: 5px">
				                <td class="ms-formspacer"></td>
				                <td width="50%"></td>
				                <td align="left"><label><b>Freight:</b></label></td>
				                <td align="right"><asp:textbox onkeypress="AllNum()" id="txtPODebitMemoFreight" accesskey="" runat="server" CssClass="ms-short-numeric-disabled" BorderStyle="Groove" Text="0.00" AutoPostBack="True" ReadOnly="true"></asp:textbox>
				                                                            <asp:requiredfieldvalidator id="Requiredfieldvalidator11" runat="server" CssClass="ms-error" ControlToValidate="txtPODebitMemoFreight" Display="Dynamic" ErrorMessage="'Freight' must not be left blank."></asp:requiredfieldvalidator></td>
			                </tr>
			                <tr style="padding-bottom: 5px">
				                <td class="ms-formspacer"></td>
				                <td></td>
				                <td align="left"><label><b>PODebitMemo Deposit:</b></label></td>
				                <td align="right"><asp:textbox onkeypress="AllNum()" id="txtPODebitMemoDeposit" accesskey="" runat="server" CssClass="ms-short-numeric-disabled" BorderStyle="Groove" Text="0.00" AutoPostBack="True" ReadOnly="true"></asp:textbox>
				                                                                <asp:requiredfieldvalidator id="Requiredfieldvalidator12" runat="server" CssClass="ms-error" ControlToValidate="txtPODebitMemoDeposit" Display="Dynamic" ErrorMessage="'PODebitMemo Deposit' must not be left blank."></asp:requiredfieldvalidator></td>
			                </tr>
			                <tr>
				                <td class="ms-formspacer"></td>
				                <td></td>
				                <td class="ms-sectionline" colspan="2" height="1"><img alt="" src="../../_layouts/images/empty.gif" /></td>
			                </tr>
			                <tr style="padding-bottom: 5px">
				                <td class="ms-formspacer"></td>
				                <td width="50%"></td>
				                <td align="left"><label><b>Total:</b></label></td>
				                <td align="right"><asp:label id="lblPODebitMemoTotal" runat="server" CssClass="ms-error">0.00</asp:label></td>
			                </tr>
		                </table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
		<td id="AddUserTextTDID2">
			<table class="ms-toolbar" id="onetidGrpsTC" style="margin-left: 0px" cellpadding="2" cellspacing="0" border="0" width="100%">
				<tr>
					<td class="ms-toolbar" align="left" nowrap="nowrap" width="99%">
						<table cellspacing="0" cellpadding="1" border="0" width="99%">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap">Remarks :</td>
								<td nowrap="nowrap" width="99%">
								<asp:Label id="Label1" runat="server" CssClass="ms-error">Enter remarks to of cancellation. Remarks should not be blank.</asp:Label><br />
								<asp:textbox id="txtRemarks" accesskey="Q" runat="server" CssClass="ms-long" BorderStyle="Groove" Width="100%" TextMode="MultiLine" Rows="5" BorderColor="Red"></asp:textbox></td>
							</tr>
						</table>
						<asp:requiredfieldvalidator id="Requiredfieldvalidator10" runat="server" CssClass="ms-error" ControlToValidate="txtRemarks" Display="Dynamic" ErrorMessage="'Remarks' must not be left blank."></asp:requiredfieldvalidator>
					</td>
					<td class="ms-separator"><asp:label id="Label16" runat="server">|</asp:label></td>
					<td class="ms-toolbar">
                        <asp:UpdatePanel id="updCancel" runat="server">
                            <ContentTemplate>
						        <table cellspacing="0" cellpadding="1" border="0">
							        <tr>
								        <td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgCancelDebitMemo" title="Cancel This Debit Memo" accesskey="I" tabIndex="5" CssClass="ms-toolbar" runat="server" ImageUrl="../../_layouts/images/cancel.gif" alt="Cancel this Debit Memo" border="0" width="16" height="16" OnClick="imgCancelDebitMemo_Click"></asp:imagebutton></td>
								        <td nowrap="nowrap"><asp:linkbutton id="cmdCancelDebitMemo" title="Cancel this Debit Memo" accesskey="I" tabIndex="6" CssClass="ms-toolbar" runat="server" onclick="cmdCancelDebitMemo_Click">Cancel Debit Memo</asp:linkbutton></td>
							        </tr>
						        </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
					</td>
					<td class="ms-toolbar" id="align052" nowrap="nowrap" align="right"><img height="1" alt="" src="../../_layouts/images/blank.gif" width="1">
					</td>
				</tr>
			</table>
		</td>
		<td><a name="cancelsection"></a><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
	</tr>
</table>
