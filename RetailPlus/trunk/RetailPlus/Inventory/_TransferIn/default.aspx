<%@ Reference Page="~/adminfiles/default.aspx" %>
<%@ Page language="c#" Inherits="AceSoft.RetailPlus.Inventory._TransferIn._Default" Codebehind="Default.aspx.cs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="CTRL" TagName="PageLevelError" Src="../../_PageLevelError.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="RightBodySectionSearch" Src="../../_RightBodySectionSearch.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="SiteTitle" Src="../../_SiteTitle.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="LargeHeading" Src="../../_LargeHeading.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="HorizontalNavBar" Src="../../_HorizontalNavBar.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="PageHeader" Src="../../_PageHeader.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="ctrlMenu" Src="../_Menu.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="ctrlExpiry" Src="../../_Expiry.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="ctrlProcessing" Src="../../_Processing.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="ctrlList" Src="_List.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="ctrlInsert" Src="_Insert.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="ctrlUpdate" Src="_Update.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="ctrlReports" Src="_Reports.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="ctrlPost" Src="_Post.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="ctrlDetails" Src="_Details.ascx" %>
<%@ Register TagPrefix="CTRL" TagName="ctrlCancel" Src="_Cancel.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>RetailPlus : Transfer In</title>
		<META content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<META content="C#" name="CODE_LANGUAGE">
		<META content="JavaScript" name="vs_defaultClientScript">
		<META content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../../menu.css" type="text/css" rel="stylesheet">
		<LINK href="../../ows.css" type="text/css" rel="stylesheet">
		<LINK href="../../sps.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../../_Scripts/DocumentScripts.js"></script>
		<script language="JavaScript" src="../../_Scripts/Calendar.js"></script>
	</HEAD>
	<BODY id="PageBody" scroll="yes" marginheight="0" marginwidth="0">
		<FORM id="frmDefaultID" name="frmDefault" action="default.aspx" method="post" runat="server">
		    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />
		    <CTRL:ctrlProcessing id="ctrlProcessing" runat="server" ></CTRL:ctrlProcessing>
			<table class="ms-main" height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
				<tr>
					<td width="100%" colSpan="3">
						<CTRL:PageHeader id="PageHeader" runat="server"></CTRL:PageHeader>
						<div class="ms-phnav1wrapper ms-navframe">
							<CTRL:HORIZONTALNAVBAR id="HorizontalNavBar" runat="server"></CTRL:HORIZONTALNAVBAR>
							<CTRL:ctrlExpiry id="ctrlExpiry" runat="server"></CTRL:ctrlExpiry></div>
					</td>
				</tr>
				<tr>
					<td class="ms-titleareaframe" colSpan="3">
						<div class="ms-titleareaframe">
							<table class="ms-titleareaframe" cellspacing="0" cellpadding="0" width="100%" border="0">
								<tr>
									<td>
										<table style="PADDING-LEFT: 2px; PADDING-TOP: 0px" cellspacing="0" cellpadding="0" border="0" width="100%">
											<tr>
												<td style="PADDING-TOP: 2px" nowrap align="center" width="132" height="46"><IMG id="spsPageTitleIcon" alt="" src="../../_layouts/images/inventory.gif">
												</td>
												<td><IMG height="1" alt="" src="../../_layouts/images/blank.gif" width="15">
												</td>
												<td nowrap width="100%">
													<table cellspacing="0" cellpadding="0">
														<tr>
															<td class="ms-titlearea" nowrap>
																<CTRL:SITETITLE id="SiteTitle" runat="server"></CTRL:SITETITLE></td>
														</tr>
														<tr>
															<td class="ms-pagetitle" id="onetidPageTitle">
																<CTRL:LARGEHEADING id="LargeHeading" runat="server"></CTRL:LARGEHEADING></td>
														</tr>
													</table>
												</td>
												<td align="right" valign="top">
													<table cellpadding="0" cellspacing="0" height="100%">
														<tr>
															<td vAlign="top" nowrap align="right" colSpan="5">
																<!-- _locID@align="align4" _locComment="{Locked=!1025,1037}{ValidString=left,right}" -->
																<CTRL:RIGHTBODYSECTIONSEARCH id="RightBodySectionSearch" runat="server"></CTRL:RIGHTBODYSECTIONSEARCH>
															</td>
														</tr>
														<tr>
															<td class="ms-vb" nowrap align="right" colSpan="5"></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
										<table cellpadding="0" cellspacing="0" border="0" width="100%">
											<tr>
												<td height="2" colspan="5"><IMG SRC="../../_layouts/images/blank.gif" width="1" height="1" alt=""></td>
											</tr>
											<tr>
												<td class="ms-titlearealine" height="1" colspan="5"><IMG SRC="../../_layouts/images/blank.gif" width="1" height="1" alt=""></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr vAlign="top" height="100%">
					<td class="ms-nav" id="webpartpagenavbar" height="100%" widthchange="175">
						<table class="ms-navframe" id="Table7" height="100%" cellspacing="0" cellpadding="0" border="0">
							<tr vAlign="top">
								<td class="ms-navwatermark" id="onetidWatermark" dir="ltr"></td>
								<td style="PADDING-RIGHT: 2px" width="126">
									<IMG height="1" alt="" src="../../_layouts/images/trans.gif" width="126">
									<CTRL:ctrlMenu id="ctrlMenu" runat="server"></CTRL:ctrlMenu>&nbsp;
								</td>
							</tr>
						</table>
					</td>
					<td><IMG height="1" alt="" src="../../_layouts/images/blank.gif" width="5"></td>
					<td class="ms-bodyareaframe" vAlign="top" width="100%"><CTRL:PAGELEVELERROR id="PageLevelError" runat="server"></CTRL:PAGELEVELERROR>
						<table class="ms-tztable" id="ZoneTable" cellspacing="0" cellpadding="0" width="100%" border="0">
							<tr id="TopRow">
								<td class="ms-tztop" id="TopCell" vAlign="top" width="100%">
									<CTRL:ctrlList id="ctrlList" runat="server" Visible="False"></CTRL:ctrlList>
									<CTRL:ctrlInsert id="ctrlInsert" runat="server" Visible="False"></CTRL:ctrlInsert>
									<CTRL:ctrlUpdate id="ctrlUpdate" runat="server" Visible="False"></CTRL:ctrlUpdate>
									<CTRL:ctrlDetails id="ctrlDetails" runat="server" Visible="False"></CTRL:ctrlDetails>
									<CTRL:ctrlPost id="ctrlPost" runat="server" Visible="False"></CTRL:ctrlPost>
									<CTRL:ctrlReports id="ctrlReports" runat="server" Visible="False"></CTRL:ctrlReports>
									<CTRL:ctrlCancel id="ctrlCancel" runat="server" Visible="False"></CTRL:ctrlCancel></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</FORM>
	</BODY>
</HTML>
