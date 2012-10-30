namespace AceSoft.RetailPlus.SalesAndReceivables._SO
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
	using AceSoft.RetailPlus.Data;
	
	public partial  class __Cancel : System.Web.UI.UserControl
	{

        #region Web Form Methods

        protected void Page_Load(object sender, System.EventArgs e)
        {
            if (!IsPostBack)
            {
                lblReferrer.Text = Request.UrlReferrer.ToString();
                if (Visible)
                {
                    LoadRecord();
                    LoadItems();
                }
            }
        }


        #endregion

        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent()
        {


        }
        #endregion

        #region Web Control Methods

        protected void imgCancel_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("Default.aspx?task=" + Common.Encrypt("list", Session.SessionID));
        }
        protected void cmdCancel_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("Default.aspx?task=" + Common.Encrypt("list", Session.SessionID));
        }
        protected void lstItem_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView dr = (DataRowView)e.Item.DataItem;

                HtmlInputCheckBox chkList = (HtmlInputCheckBox)e.Item.FindControl("chkList");
                chkList.Value = dr["SOItemID"].ToString();

                HyperLink lnkDescription = (HyperLink)e.Item.FindControl("lnkDescription");
                lnkDescription.Text = dr["Description"].ToString();
                lnkDescription.NavigateUrl = Constants.ROOT_DIRECTORY + "/MasterFiles/_Product/Default.aspx?task=" + Common.Encrypt("det", Session.SessionID) + "&id=" + Common.Encrypt(dr["ProductID"].ToString(), Session.SessionID);

                HyperLink lnkMatrixDescription = (HyperLink)e.Item.FindControl("lnkMatrixDescription");
                if (dr["MatrixDescription"].ToString() == string.Empty || dr["MatrixDescription"].ToString() == null)
                    lnkMatrixDescription.Text = "_";
                else
                {
                    lnkMatrixDescription.Text = dr["MatrixDescription"].ToString();
                    lnkMatrixDescription.NavigateUrl = Constants.ROOT_DIRECTORY + "/MasterFiles/_Product/_VariationsMatrix/Default.aspx?task=" + Common.Encrypt("det", Session.SessionID) + "&prodid=" + Common.Encrypt(dr["ProductID"].ToString(), Session.SessionID) + "&id=" + Common.Encrypt(dr["VariationMatrixID"].ToString(), Session.SessionID);
                }

                Label lblQuantity = (Label)e.Item.FindControl("lblQuantity");
                lblQuantity.Text = Convert.ToDecimal(dr["Quantity"].ToString()).ToString("#,##0.#0");

                Label lblProductUnitID = (Label)e.Item.FindControl("lblProductUnitID");
                lblProductUnitID.Text = dr["ProductUnitID"].ToString();

                Label lblProductUnitCode = (Label)e.Item.FindControl("lblProductUnitCode");
                lblProductUnitCode.Text = dr["ProductUnitCode"].ToString();

                Label lblUnitCost = (Label)e.Item.FindControl("lblUnitCost");
                lblUnitCost.Text = Convert.ToDecimal(dr["UnitCost"].ToString()).ToString("#,##0.#0");

                Label lblDiscountApplied = (Label)e.Item.FindControl("lblDiscountApplied");
                lblDiscountApplied.Text = Convert.ToDecimal(dr["DiscountApplied"].ToString()).ToString("#,##0.#0");

                DiscountTypes DiscountType = (DiscountTypes)Enum.Parse(typeof(DiscountTypes), dr["DiscountType"].ToString());
                if (DiscountType == DiscountTypes.Percentage)
                {
                    Label lblPercent = (Label)e.Item.FindControl("lblPercent");
                    lblPercent.Visible = true;
                }

                Label lblAmount = (Label)e.Item.FindControl("lblAmount");
                lblAmount.Text = Convert.ToDecimal(dr["Amount"].ToString()).ToString("#,##0.#0");

                Label lblVAT = (Label)e.Item.FindControl("lblVAT");
                lblVAT.Text = Convert.ToDecimal(dr["VAT"].ToString()).ToString("#,##0.#0");

                Label lblEVAT = (Label)e.Item.FindControl("lblEVAT");
                lblEVAT.Text = Convert.ToDecimal(dr["EVAT"].ToString()).ToString("#,##0.#0");

                Label lblisVATInclusive = (Label)e.Item.FindControl("lblisVATInclusive");
                lblisVATInclusive.Text = Convert.ToBoolean(Convert.ToInt16(dr["isVATInclusive"].ToString())).ToString();

                Label lblLocalTax = (Label)e.Item.FindControl("lblLocalTax");
                lblLocalTax.Text = Convert.ToDecimal(dr["LocalTax"].ToString()).ToString("#,##0.#0");

                Label lblRemarks = (Label)e.Item.FindControl("lblRemarks");
                lblRemarks.Text = dr["Remarks"].ToString();

                //For anchor
                HtmlGenericControl divExpCollAsst = (HtmlGenericControl)e.Item.FindControl("divExpCollAsst");

                HtmlAnchor anchorDown = (HtmlAnchor)e.Item.FindControl("anchorDown");
                anchorDown.HRef = "javascript:ToggleDiv('" + divExpCollAsst.ClientID + "')";
            }
        }
        protected void imgPrint_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            PrintSO();
        }
        protected void cmdPrint_Click(object sender, System.EventArgs e)
        {
            PrintSO();
        }
        protected void imgPrintQuotation_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            PrintQuotation();
        }
        protected void cmdPrintQuotation_Click(object sender, EventArgs e)
        {
            PrintQuotation();
        }
        protected void cmdCancelSO_Click(object sender, System.EventArgs e)
        {
            CancelSO();
        }
        protected void imgCancelSO_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            CancelSO();
        }

        #endregion

        #region Private Methods

        private void LoadRecord()
        {
            Int64 iID = Convert.ToInt64(Common.Decrypt(Request.QueryString["soid"], Session.SessionID));
            SO clsSO = new SO();
            SODetails clsDetails = clsSO.Details(iID);
            clsSO.CommitAndDispose();

            lblSOID.Text = clsDetails.SOID.ToString();
            lblSONo.Text = clsDetails.SONo;
            lblSODate.Text = clsDetails.SODate.ToString("yyyy-MM-dd HH:mm:ss");
            lblRequiredDeliveryDate.Text = clsDetails.RequiredDeliveryDate.ToString("yyyy-MM-dd");
            lblCustomerID.Text = clsDetails.CustomerID.ToString();

            lblCustomerCode.Text = clsDetails.CustomerCode.ToString();
            string stParam = "?task=" + Common.Encrypt("details", Session.SessionID) + "&id=" + Common.Encrypt(clsDetails.CustomerID.ToString(), Session.SessionID);
            lblCustomerCode.NavigateUrl = "../_Customer/Default.aspx" + stParam;

            lblCustomerContact.Text = clsDetails.CustomerContact;
            lblCustomerTelephoneNo.Text = clsDetails.CustomerTelephoneNo;
            lblTerms.Text = clsDetails.CustomerTerms.ToString("##0");
            switch (clsDetails.CustomerModeOfTerms)
            {
                case 0:
                    lblModeOfterms.Text = "Days";
                    break;
                case 1:
                    lblModeOfterms.Text = "Months";
                    break;
                case 2:
                    lblModeOfterms.Text = "Years";
                    break;
            }
            lblCustomerAddress.Text = clsDetails.CustomerAddress;
            lblBranchID.Text = clsDetails.BranchID.ToString();
            lblBranchCode.Text = clsDetails.BranchCode;
            lblBranchAddress.Text = clsDetails.BranchAddress;
            lblSORemarks.Text = clsDetails.Remarks;

            txtSODiscountApplied.Text = clsDetails.DiscountApplied.ToString("###0.#0");
            cboSODiscountType.SelectedIndex = cboSODiscountType.Items.IndexOf(cboSODiscountType.Items.FindByValue(clsDetails.DiscountType.ToString("d")));
            lblSODiscount.Text = clsDetails.Discount.ToString("#,##0.#0");
            lblSOVatableAmount.Text = clsDetails.VatableAmount.ToString("#,##0.#0");
            txtSOFreight.Text = clsDetails.Freight.ToString("#,##0.#0");
            txtSODeposit.Text = clsDetails.Deposit.ToString("#,##0.#0");
            lblSOSubTotal.Text = Convert.ToDecimal(clsDetails.SubTotal - clsDetails.VAT + clsDetails.Freight - clsDetails.Deposit).ToString("#,##0.#0");
            lblSOVAT.Text = clsDetails.VAT.ToString("#,##0.#0");
            lblSOTotal.Text = clsDetails.SubTotal.ToString("#,##0.#0");
        }
        private void LoadItems()
        {
            DataClass clsDataClass = new DataClass();

            SOItem clsSOItem = new SOItem();
            lstItem.DataSource = clsDataClass.DataReaderToDataTable(clsSOItem.List(Convert.ToInt64(lblSOID.Text), "SOItemID", SortOption.Ascending)).DefaultView;
            lstItem.DataBind();
            clsSOItem.CommitAndDispose();
        }
        private void PrintSO()
        {
            string stParam = "?task=" + Common.Encrypt("reports", Session.SessionID) + "&target=" + Common.Encrypt("po", Session.SessionID) + "&soid=" + Common.Encrypt(lblSOID.Text, Session.SessionID);
            Response.Redirect("Default.aspx" + stParam);
        }
        private void PrintQuotation()
        {
            string stParam = "?task=" + Common.Encrypt("reports", Session.SessionID) + "&target=" + Common.Encrypt("qu", Session.SessionID) + "&soid=" + Common.Encrypt(lblSOID.Text, Session.SessionID);
            Response.Redirect("Default.aspx" + stParam);
        }
        private void CancelSO()
        {
            long SOID = Convert.ToInt64(lblSOID.Text);
            string Remarks = txtRemarks.Text;

            SO clsSO = new SO();
            clsSO.Cancel(SOID, DateTime.Now, Remarks, Convert.ToInt64(Session["UID"].ToString()));
            clsSO.CommitAndDispose();

            Response.Redirect("Default.aspx?task=" + Common.Encrypt("list", Session.SessionID));
        }

        #endregion
        
}
}
