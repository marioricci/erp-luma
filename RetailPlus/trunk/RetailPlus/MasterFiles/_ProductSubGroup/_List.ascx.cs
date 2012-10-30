using AceSoft.RetailPlus.Security;

namespace AceSoft.RetailPlus.MasterFiles._ProductSubGroup
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
	using AceSoft.RetailPlus.Data; 

	public partial  class __List : System.Web.UI.UserControl
	{
		protected PagedDataSource PageData = new PagedDataSource();

		#region Web Form methods

		protected void Page_Load(object sender, System.EventArgs e)
		{
			ManageSecurity();

			if (!IsPostBack)
				if (Visible)
				{
					LoadList();
					cmdDelete.Attributes.Add("onClick", "return confirm_delete();");
					imgDelete.Attributes.Add("onClick", "return confirm_delete();");
				}
		}

		
		#endregion
		
		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.imgAdd.Click += new System.Web.UI.ImageClickEventHandler(this.imgAdd_Click);
			this.imgDelete.Click += new System.Web.UI.ImageClickEventHandler(this.imgDelete_Click);
			this.idEdit.Click += new System.Web.UI.ImageClickEventHandler(this.idEdit_Click);
			this.lstItem.ItemCommand += new System.Web.UI.WebControls.DataListCommandEventHandler(this.lstItem_ItemCommand);
			this.lstItem.ItemDataBound += new System.Web.UI.WebControls.DataListItemEventHandler(this.lstItem_ItemDataBound);

		}
		#endregion

		#region Web Form methods

        protected void imgAdd_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			string stParam = "?task=" + Common.Encrypt("add",Session.SessionID);			
			Response.Redirect("Default.aspx" + stParam);
		}
		protected void cmdAdd_Click(object sender, System.EventArgs e)
		{
			string stParam = "?task=" + Common.Encrypt("add",Session.SessionID);			
			Response.Redirect("Default.aspx" + stParam);
		}
        protected void imgDelete_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			if (Delete())
				LoadList();
		}
		protected void cmdDelete_Click(object sender, System.EventArgs e)
		{
			if (Delete())
				LoadList();
		}
        protected void idEdit_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Update();
		}
		protected void cmdEdit_Click(object sender, System.EventArgs e)
		{
			Update();
		}
		protected void cboCurrentPage_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			LoadList();
		}
        protected void lstItem_ItemDataBound(object sender, DataListItemEventArgs e)
		{
			if(e.Item.ItemType == ListItemType.Header)
			{
				LoadSortFieldOptions(e);
			}
			else if(e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
			{
                DataRowView dr = (DataRowView)e.Item.DataItem;
                ImageButton imgItemDelete = (ImageButton)e.Item.FindControl("imgItemDelete");
                ImageButton imgItemEdit = (ImageButton)e.Item.FindControl("imgItemEdit");

                HtmlInputCheckBox chkList = (HtmlInputCheckBox)e.Item.FindControl("chkList");
                chkList.Value = dr["ProductSubGroupID"].ToString();
                if (chkList.Value == "1")
                {
                    chkList.Attributes.Add("disabled", "false");
                    imgItemDelete.Enabled = false; imgItemDelete.ImageUrl = Constants.ROOT_DIRECTORY + "/_layouts/images/blank.gif";
                    imgItemEdit.Enabled = false; imgItemEdit.ImageUrl = Constants.ROOT_DIRECTORY + "/_layouts/images/blank.gif";
                }
                else
                {
                    imgItemDelete.Enabled = cmdDelete.Visible; if (!imgItemDelete.Enabled) imgItemDelete.ImageUrl = Constants.ROOT_DIRECTORY + "/_layouts/images/blank.gif";
                    imgItemEdit.Enabled = cmdEdit.Visible; if (!imgItemEdit.Enabled) imgItemEdit.ImageUrl = Constants.ROOT_DIRECTORY + "/_layouts/images/blank.gif";
                    if (imgItemDelete.Enabled) imgItemDelete.Attributes.Add("onClick", "return confirm_item_delete();");
                }

                HyperLink lnkProductGroupCode = (HyperLink)e.Item.FindControl("lnkProductGroupCode");
                lnkProductGroupCode.Text = dr["ProductGroupCode"].ToString();
                lnkProductGroupCode.NavigateUrl = Constants.ROOT_DIRECTORY + "/MasterFiles/_ProductGroup/Default.aspx?task=" + Common.Encrypt("details", Session.SessionID) + "&id=" + Common.Encrypt(dr["ProductGroupID"].ToString(), Session.SessionID);

                HyperLink lnkProductSubGroupCode = (HyperLink)e.Item.FindControl("lnkProductSubGroupCode");
                lnkProductSubGroupCode.Text = dr["ProductSubGroupCode"].ToString();
                lnkProductSubGroupCode.NavigateUrl = "Default.aspx?task=" + Common.Encrypt("details", Session.SessionID) + "&id=" + Common.Encrypt(chkList.Value, Session.SessionID);

                HyperLink lnkProductSubGroupName = (HyperLink)e.Item.FindControl("lnkProductSubGroupName");
                lnkProductSubGroupName.Text = dr["ProductSubGroupName"].ToString();
                lnkProductSubGroupName.NavigateUrl = "Default.aspx?task=" + Common.Encrypt("details", Session.SessionID) + "&id=" + Common.Encrypt(chkList.Value, Session.SessionID);

                HyperLink lnkBaseUnitName = (HyperLink)e.Item.FindControl("lnkBaseUnitName");
                lnkBaseUnitName.Text = dr["BaseUnitName"].ToString();
                lnkBaseUnitName.NavigateUrl = Constants.ROOT_DIRECTORY + "/MasterFiles/_Unit/Default.aspx?task=" + Common.Encrypt("details", Session.SessionID) + "&id=" + Common.Encrypt(dr["BaseUnitID"].ToString(), Session.SessionID);

				Label lblPrice = (Label) e.Item.FindControl("lblPrice");
				lblPrice.Text = Convert.ToDecimal(dr["Price"].ToString()).ToString("#,##0.#0");

				Label lblPurchasePrice = (Label) e.Item.FindControl("lblPurchasePrice");
				lblPurchasePrice.Text = Convert.ToDecimal(dr["PurchasePrice"].ToString()).ToString("#,##0.#0");

				//For anchor
				HtmlGenericControl divExpCollAsst = (HtmlGenericControl) e.Item.FindControl("divExpCollAsst");

				HtmlAnchor anchorDown = (HtmlAnchor) e.Item.FindControl("anchorDown");
				anchorDown.HRef = "javascript:ToggleDiv('" +  divExpCollAsst.ClientID + "')";

				Label lblVAT = (Label) e.Item.FindControl("lblVAT");
				lblVAT.Text = Convert.ToDecimal(dr["VAT"].ToString()).ToString("#,##0.#0") + " %";

				Label lblEVAT = (Label) e.Item.FindControl("lblEVAT");
				lblEVAT.Text = Convert.ToDecimal(dr["EVAT"].ToString()).ToString("#,##0.#0") + " %"; 

				Label lblLocalTax = (Label) e.Item.FindControl("lblLocalTax");
				lblLocalTax.Text = Convert.ToDecimal(dr["LocalTax"].ToString()).ToString("#,##0.#0") + " %"; 
			}
		}
        protected void lstItem_ItemCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)
		{
            HtmlInputCheckBox chkList = null;
            string stParam = string.Empty;

            chkList = (HtmlInputCheckBox)e.Item.FindControl("chkList");
            stParam = "?task=" + Common.Encrypt("list", Session.SessionID) + "&subgroupid=" + Common.Encrypt(chkList.Value, Session.SessionID);

            switch (e.CommandName)
            {
                case "imgItemDelete":
                    ProductSubGroup clsProductSubGroup = new ProductSubGroup();
                    clsProductSubGroup.Delete(chkList.Value);
                    clsProductSubGroup.CommitAndDispose();

                    LoadList();
                    break;
                case "imgItemEdit":
                    stParam = "?task=" + Common.Encrypt("edit", Session.SessionID) + "&id=" + Common.Encrypt(chkList.Value, Session.SessionID);
                    Response.Redirect("Default.aspx" + stParam);
                    break;
                case "imgVariationsClick":
                    Response.Redirect(Constants.ROOT_DIRECTORY + "/MasterFiles/_ProductSubGroup/_Variations/Default.aspx" + stParam);
                    break;
                case "imgVariationsMatrixClick":
                    Response.Redirect(Constants.ROOT_DIRECTORY + "/MasterFiles/_ProductSubGroup/_VariationsMatrix/Default.aspx" + stParam);
                    break;
                case "imgUnitsMatrixClick":
                    Response.Redirect(Constants.ROOT_DIRECTORY + "/MasterFiles/_ProductSubGroup/_UnitsMatrix/Default.aspx" + stParam);
                    break;
            }
		}

		#endregion

		#region Private methods

		private void ManageSecurity()
		{
			Int64 UID = Convert.ToInt64(Session["UID"]);
			AccessRights clsAccessRights = new AccessRights(); 
			AccessRightsDetails clsDetails = new AccessRightsDetails();

			clsDetails = clsAccessRights.Details(UID,(int) AccessTypes.ProductSubGroups); 
			imgAdd.Visible = clsDetails.Write; 
			cmdAdd.Visible = clsDetails.Write; 
			imgDelete.Visible = clsDetails.Write; 
			cmdDelete.Visible = clsDetails.Write; 
			cmdEdit.Visible = clsDetails.Write; 
			idEdit.Visible = clsDetails.Write; 
			lblSeparator1.Visible = clsDetails.Write;
			lblSeparator2.Visible = clsDetails.Write;

			clsAccessRights.CommitAndDispose();
		}
		private void LoadSortFieldOptions(DataListItemEventArgs e)
		{
			string stParam = null;		

			SortOption sortoption = SortOption.Ascending;
			if (Request.QueryString["sortoption"]!=null)
				sortoption = (SortOption) Enum.Parse(typeof(SortOption), Common.Decrypt(Request.QueryString["sortoption"], Session.SessionID), true);

			if (sortoption == SortOption.Ascending)
				stParam += "?sortoption=" + Common.Encrypt(SortOption.Desscending.ToString("G"), Session.SessionID);
			else if (sortoption == SortOption.Desscending)
				stParam += "?sortoption=" + Common.Encrypt(SortOption.Ascending.ToString("G"), Session.SessionID);

			System.Collections.Specialized.NameValueCollection querystrings = Request.QueryString;;
			foreach(string querystring in querystrings.AllKeys)
			{
				if (querystring.ToLower() != "sortfield" && querystring.ToLower() != "sortoption") 
					stParam += "&" + querystring + "=" + querystrings[querystring].ToString();
			}

			HyperLink SortByProductGroupCode = (HyperLink) e.Item.FindControl("SortByProductGroupCode");
			HyperLink SortByProductSubGroupCode = (HyperLink) e.Item.FindControl("SortByProductSubGroupCode");
			HyperLink SortByProductSubGroupName = (HyperLink) e.Item.FindControl("SortByProductSubGroupName");
			HyperLink SortByBaseUnitName = (HyperLink) e.Item.FindControl("SortByBaseUnitName");
			HyperLink SortByPrice = (HyperLink) e.Item.FindControl("SortByPrice");

			SortByProductGroupCode.NavigateUrl = "Default.aspx" + stParam + "&sortfield=" + Common.Encrypt("ProductGroupCode", Session.SessionID);
			SortByProductSubGroupCode.NavigateUrl = "Default.aspx" + stParam + "&sortfield=" + Common.Encrypt("ProductSubGroupCode", Session.SessionID);
			SortByProductSubGroupName.NavigateUrl = "Default.aspx" + stParam + "&sortfield=" + Common.Encrypt("ProductSubGroupName", Session.SessionID);
			SortByBaseUnitName.NavigateUrl = "Default.aspx" + stParam + "&sortfield=" + Common.Encrypt("UnitName", Session.SessionID);
			SortByPrice.NavigateUrl = "Default.aspx" + stParam + "&sortfield=" + Common.Encrypt("Price", Session.SessionID);
		}
		private void LoadList()
		{	
			ProductSubGroup clsProductSubGroup = new ProductSubGroup();
			DataClass clsDataClass = new DataClass();

            string SortField = "ProductSubGroupCode";
            if (Request.QueryString["sortfield"] != null)
            { SortField = Common.Decrypt(Request.QueryString["sortfield"].ToString(), Session.SessionID); }

            SortOption sortoption = SortOption.Ascending;
            if (Request.QueryString["sortoption"] != null)
            { sortoption = (SortOption)Enum.Parse(typeof(SortOption), Common.Decrypt(Request.QueryString["sortoption"], Session.SessionID), true); }

            string SearchKey = string.Empty;
            if (Request.QueryString["Search"] != null)
            { SearchKey = Common.Decrypt((string)Request.QueryString["search"], Session.SessionID); }
            else if (Session["Search"] != null)
            { SearchKey = Common.Decrypt(Session["Search"].ToString(), Session.SessionID); }

            try { Session.Remove("Search"); }
            catch { }
            if (SearchKey == null) { SearchKey = string.Empty; }
            else if (SearchKey != string.Empty) { Session.Add("Search", Common.Encrypt(SearchKey, Session.SessionID)); }

            ProductSubGroupColumns clsProductSubGroupColumns = new ProductSubGroupColumns();
            clsProductSubGroupColumns.ProductGroupID = true;
            clsProductSubGroupColumns.ProductGroupCode = true;
            clsProductSubGroupColumns.ProductSubGroupCode = true;
            clsProductSubGroupColumns.ProductSubGroupName = true;
            clsProductSubGroupColumns.BaseUnitID = true;
            clsProductSubGroupColumns.BaseUnitName = true;
            clsProductSubGroupColumns.Price = true;
            clsProductSubGroupColumns.PurchasePrice = true;
            clsProductSubGroupColumns.VAT = true;
            clsProductSubGroupColumns.EVAT = true;
            clsProductSubGroupColumns.LocalTax = true;


            ProductSubGroupDetails clsSearchKeys = new ProductSubGroupDetails();
            clsSearchKeys.ProductSubGroupName = SearchKey;

            ProductSubGroup clsSubGroup = new ProductSubGroup(clsProductSubGroup.Connection, clsProductSubGroup.Transaction);
            System.Data.DataTable dt = clsSubGroup.ListAsDataTable(clsProductSubGroupColumns, clsSearchKeys, 0, System.Data.SqlClient.SortOrder.Ascending, 0, ProductSubGroupColumnNames.ProductSubGroupName, System.Data.SqlClient.SortOrder.Ascending);
            clsProductSubGroup.CommitAndDispose();

            PageData.DataSource = dt.DefaultView;
			int iPageSize = Convert.ToInt16(Session["PageSize"]) ;
			
			PageData.AllowPaging = true;
			PageData.PageSize = iPageSize;
			try
			{
				PageData.CurrentPageIndex = Convert.ToInt16(cboCurrentPage.SelectedItem.Value) - 1;				
				lstItem.DataSource = PageData;
				lstItem.DataBind();
			}
			catch
			{
				PageData.CurrentPageIndex = 1;
				lstItem.DataSource = PageData;
				lstItem.DataBind();
			}			
			
			cboCurrentPage.Items.Clear();
			for (int i=0; i < PageData.PageCount;i++)
			{
				int iValue = i + 1;
				cboCurrentPage.Items.Add(new ListItem(iValue.ToString(),iValue.ToString()));
				if (PageData.CurrentPageIndex == i)
				{	cboCurrentPage.Items[i].Selected = true;}
				else
				{	cboCurrentPage.Items[i].Selected = false;}
			}
			lblDataCount.Text = " of " + " " + PageData.PageCount;
		}
		private bool Delete()
		{
			bool boRetValue = false;
			string stIDs = "";

			foreach(DataListItem item in lstItem.Items)
			{
				HtmlInputCheckBox chkList = (HtmlInputCheckBox) item.FindControl("chkList");
				if (chkList!=null)
				{
					if (chkList.Checked == true)
					{
						stIDs += chkList.Value + ",";		
						boRetValue = true;
					}
				}
			}
			if (boRetValue)
			{
				ProductSubGroup clsProductSubGroup = new ProductSubGroup();
				clsProductSubGroup.Delete( stIDs.Substring(0,stIDs.Length-1));
				clsProductSubGroup.CommitAndDispose();
			}

			return boRetValue;
		}
		private void Update()
		{
			if (isChkListSingle() == true)
			{
				string stID = GetFirstID();
				if (stID!=null)
				{
					string stParam = "?task=" + Common.Encrypt("edit",Session.SessionID) + "&id=" + Common.Encrypt(stID,Session.SessionID);	
					Response.Redirect("Default.aspx" + stParam);
				}
			}
			else
			{
				string stScript = "<Script>";
				stScript += "window.alert('Cannot update more than one record. Please select at least one record to update.')";
				stScript += "</Script>";
				Response.Write(stScript);	
			}
		}
		private string GetFirstID()
		{
			foreach(DataListItem item in lstItem.Items)
			{
				HtmlInputCheckBox chkList = (HtmlInputCheckBox) item.FindControl("chkList");
				if (chkList!=null)
				{
					if (chkList.Checked == true)
					{
						return chkList.Value;
					}
				}
			}
			return null;
		}
		private bool isChkListSingle()
		{
			bool boChkListSingle = true;
			int iCount = 0;
			
			foreach(DataListItem item in lstItem.Items)
			{
				HtmlInputCheckBox chkList = (HtmlInputCheckBox) item.FindControl("chkList");
				if (chkList!=null)
				{
					if (chkList.Checked == true)
					{
						iCount += 1;
						if (iCount >= 2)
						{	return false;	}
					}
				}
			}
			return boChkListSingle;
		}

		#endregion
    }
}
