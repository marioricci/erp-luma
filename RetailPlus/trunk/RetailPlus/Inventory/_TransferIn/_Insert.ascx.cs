namespace AceSoft.RetailPlus.Inventory._TransferIn
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
	using AceSoft.RetailPlus.Data;
	
	public partial  class __Insert : System.Web.UI.UserControl
	{
		
		#region Web Form Methods

		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (!IsPostBack)
			{
				lblReferrer.Text = Request.UrlReferrer == null ? Constants.ROOT_DIRECTORY : Request.UrlReferrer.ToString();
				if (Visible)
					LoadOptions();			
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

        protected void imgSaveAddItem_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Int64 TransferInID = SaveRecord();
			string stParam = "?task=" + Common.Encrypt("additem",Session.SessionID) + "&transferinid=" + Common.Encrypt(TransferInID.ToString(),Session.SessionID) + "#itemsection";	
			Response.Redirect("Default.aspx" + stParam);
		}
        protected void cmdSaveAddItem_Click(object sender, EventArgs e)
		{
			Int64 TransferInID = SaveRecord();
			string stParam = "?task=" + Common.Encrypt("additem",Session.SessionID) + "&transferinid=" + Common.Encrypt(TransferInID.ToString(),Session.SessionID) + "#itemsection";	
			Response.Redirect("Default.aspx" + stParam);	
		}
        protected void imgSave_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			SaveRecord();
			
			string stParam = "?task=" + Common.Encrypt("add",Session.SessionID);
			Response.Redirect("Default.aspx" + stParam);	
		}
		protected void cmdSave_Click(object sender, System.EventArgs e)
		{
			SaveRecord();
			
			string stParam = "?task=" + Common.Encrypt("add",Session.SessionID);
			Response.Redirect("Default.aspx" + stParam);			
		}
        protected void imgSaveBack_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			SaveRecord();
			
			Response.Redirect(lblReferrer.Text);
		}
		protected void cmdSaveBack_Click(object sender, System.EventArgs e)
		{
			SaveRecord();
			
			Response.Redirect(lblReferrer.Text);
		}
        protected void imgCancel_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Response.Redirect(lblReferrer.Text);
		}
		protected void cmdCancel_Click(object sender, System.EventArgs e)
		{
			Response.Redirect(lblReferrer.Text);
		}
		protected void cboBranch_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			Data.Branch clsBranch = new Data.Branch();
			Data.BranchDetails clsDetails = clsBranch.Details(Convert.ToInt16(cboBranch.SelectedItem.Value));
			clsBranch.CommitAndDispose();
			
			txtBranchAddress.Text = clsDetails.Address;
		}
		protected void cboSupplier_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			Data.Contacts clsContact = new Data.Contacts();
			Data.ContactDetails clsDetails = clsContact.Details(Convert.ToInt64(cboSupplier.SelectedItem.Value));
			clsContact.CommitAndDispose();
			
			txtSupplierContact.Text = clsDetails.ContactName;
			txtSupplierTelephoneNo.Text = clsDetails.TelephoneNo;
			lblTerms.Text = clsDetails.Terms.ToString("##0");
            lblModeOfterms.Text = clsDetails.ModeOfTerms.ToString("G");
			txtSupplierAddress.Text = clsDetails.Address;
		}

		#endregion

		#region Private Methods

		private void LoadOptions()
		{
			DataClass clsDataClass = new DataClass();

			Contacts clsContact = new Contacts();
			cboSupplier.DataTextField = "ContactName";
			cboSupplier.DataValueField = "ContactID";
			cboSupplier.DataSource = clsContact.SuppliersAsDataTable(string.Empty, 0, "ContactName", SortOption.Ascending).DefaultView;
			cboSupplier.DataBind();
			
            Branch clsBranch = new Branch(clsContact.Connection, clsContact.Transaction);
			cboBranch.DataTextField = "BranchCode";
			cboBranch.DataValueField = "BranchID";
			cboBranch.DataSource = clsBranch.ListAsDataTable().DefaultView;
			cboBranch.DataBind();
            clsContact.CommitAndDispose();

            cboSupplier.SelectedIndex = 0;
            cboSupplier_SelectedIndexChanged(null, null);
            cboBranch.SelectedIndex = cboBranch.Items.IndexOf(cboBranch.Items.FindByValue(Constants.BRANCH_ID_MAIN.ToString()));
			cboBranch_SelectedIndexChanged(null, null);
            

			NewTransaction();
		}
		private void NewTransaction()
		{
			lblTransferInDate.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
			txtRequiredDeliveryDate.Text = Convert.ToDateTime(lblTransferInDate.Text).AddDays(30).ToString("yyyy-MM-dd");

			lblTransferInNo.Text = "WILL BE ASSIGNED AFTER SAVING";
		}
		private Int64 SaveRecord()
		{
			TransferIn clsTransferIn = new TransferIn();
			clsTransferIn.GetConnection();
			lblTransferInNo.Text = Constants.TRANSFER_IN_CODE + CompanyDetails.BECompanyCode + DateTime.Now.Year.ToString() + clsTransferIn.LastTransactionNo();

			TransferInDetails clsDetails = new TransferInDetails();

			clsDetails.TransferInNo = lblTransferInNo.Text;
			clsDetails.TransferInDate = Convert.ToDateTime(lblTransferInDate.Text);
			clsDetails.SupplierID = Convert.ToInt64(cboSupplier.SelectedItem.Value);
			clsDetails.SupplierCode = cboSupplier.SelectedItem.Text;
			clsDetails.SupplierContact = txtSupplierContact.Text;
			clsDetails.SupplierAddress = txtSupplierAddress.Text;
			clsDetails.SupplierTelephoneNo = txtSupplierTelephoneNo.Text;
            clsDetails.SupplierTerms = Convert.ToInt32(lblTerms.Text);
			switch (lblModeOfterms.Text)
			{
				case "Days":
					clsDetails.SupplierModeOfTerms = 0;
					break;
				case "Months":
					clsDetails.SupplierModeOfTerms = 1;
					break;
				case "Years":
					clsDetails.SupplierModeOfTerms = 2;
					break;
			}
			clsDetails.RequiredDeliveryDate = Convert.ToDateTime(txtRequiredDeliveryDate.Text);
			clsDetails.BranchID = Convert.ToInt16(cboBranch.SelectedItem.Value);
			clsDetails.TransferrerID = Convert.ToInt64(Session["UID"].ToString());
            clsDetails.TransferrerName = Session["Name"].ToString();
			clsDetails.Status = TransferInStatus.Open;
			clsDetails.Remarks = txtRemarks.Text;
			
			Int64 id = clsTransferIn.Insert(clsDetails);
			clsTransferIn.CommitAndDispose();

			return id;
		}

		#endregion

    }
}
