<%@ Control Language="c#" Inherits="AceSoft.RetailPlus.Inventory._Stock.__Upload" Codebehind="_Upload.ascx.cs" %>
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
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgCancel" title="Cancel uploading stocks" accessKey="C" tabIndex="3" CssClass="ms-toolbar" runat="server" ImageUrl="../../_layouts/images/impitem.gif" alt="Cancel uploading stocks" border="0" width="16" height="16" CausesValidation="False"></asp:imagebutton></td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdCancel" title="Cancel uploading stocks" accessKey="C" tabIndex="4" CssClass="ms-toolbar" runat="server" CausesValidation="False" onclick="cmdCancel_Click">Cancel</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-toolbar" id="align02" nowrap="nowrap" align="right" width="99%"><img height="1" alt="" src="../../_layouts/images/blank.gif" width="1" />
					</td>
				</tr>
			</table>
			<asp:label id="lblReferrer" runat="server" Visible="False"></asp:label></td>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
	</tr>
	<tr>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
		<td>
			<table cellspacing="0" cellpadding="0" width="100%" border="0">
				<tr>
					<td class="ms-descriptiontext" style="padding-bottom: 10px; PADDING-TOP: 8px" colspan="3"><font color="red">*</font>
						Indicates a required field
					</td>
				</tr>
				<tr>
					<td class="ms-sectionline" colspan="3" height="1"><A name="InputFormSection1"></A><img alt="" src="../../_layouts/images/empty.gif" /></td>
				</tr>
				<tr>
					<td valign="top" colspan="3">
						<div class="ms-sectionheader" style="padding-bottom: 8px">Step 1:&nbsp;Upload 
							Stocks to Inventory</div>
						<div class="ms-descriptiontext" style="padding-bottom: 10px">Browse for the XML 
							file that you want to upload then click 'Upload and Back'.</div>
					</td>
				</tr>
				<tr>
					<td style="padding-bottom: 20px" valign="top"></td>
					<td class="ms-authoringcontrols ms-formwidth" style="PADDING-RIGHT: 10px; BORDER-TOP: white 1px solid; PADDING-LEFT: 10px; padding-bottom: 20px" valign="top" colspan="2">
					<INPUT type="file" id="txtPath" name="txtPath" accept="*.xml" runat="server" BorderStyle="Groove" Class="ms-long">
					<font color="red">*</font>
					<asp:requiredfieldvalidator id="Requiredfieldvalidator4" CssClass="ms-error" runat="server" ControlToValidate="txtPath" Display="Dynamic" ErrorMessage="'Path' must not be left blank."></asp:requiredfieldvalidator>
					<br />
					<asp:Label id="Label1" runat="server"></asp:Label><br />
				</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="3"><img height="10" alt="" src="../../_layouts/images/blank.gif" width="1"/></td>
	</tr>
	<tr>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
		<td id="AddUserTextTDID2">
			<table class="ms-toolbar" id="onetidGrpsTB1" style="margin-left: 3px" cellspacing="0" cellpadding="2" border="0">
				<tr>
					<td class="ms-toolbar">
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgUpload" title="Upload Stocks to Inventory now" accessKey="B" tabIndex="1" CssClass="ms-toolbar" runat="server" ImageUrl="../../_layouts/images/saveitem.gif" alt="Add New Stock Transaction" border="0" width="16" height="16"></asp:imagebutton>&nbsp;
								</td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdUpload" title="Upload Stocks to Inventory now" accessKey="U" tabIndex="2" CssClass="ms-toolbar" runat="server" onclick="cmdUpload_Click">Upload and Back</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-toolbar" id="align03" nowrap="nowrap" align="right" width="99%"><img height="1" alt="" src="../../_layouts/images/blank.gif" width="1" />
					</td>
				</tr>
			</table>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
	</tr>
	<tr>
		<td colspan="3"><img height="10" alt="" src="../../_layouts/images/blank.gif" width="1"/></td>
	</tr>
</table>
