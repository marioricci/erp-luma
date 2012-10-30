using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using AceSoft.RetailPlus.Data;

namespace AceSoft.RetailPlus.MasterFiles._ProductSubGroup._Variations
{
	/// <summary>
	/// Summary description for _Default.
	/// </summary>
	public partial class _Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, System.EventArgs e)
		{
			const string defaultHeading = "Master Files";
			string stHeading = defaultHeading;			

			const string defaultTitle = "List of Product SubGroup Variation Types";
			SiteTitle.Title = defaultTitle;

			const SearchCategoryID defaultSearchIndex = SearchCategoryID.ProductSubGroups;
			SearchCategoryID SearchIndex = defaultSearchIndex;			

			HorizontalNavBar.PageNavigatorid = HorizontalNavID.MasterFiles;

			if (Request.QueryString["task"]!=null)
			{
                ProductSubGroup clsProductSubGroup = new ProductSubGroup();
                ProductSubGroupDetails clsDetails = new ProductSubGroupDetails();

                int id = Convert.ToInt32(Common.Decrypt(Request.QueryString["subgroupid"].ToString(), Session.SessionID));
                clsDetails = clsProductSubGroup.Details(id);

                clsProductSubGroup.CommitAndDispose();

                string groupCode = " for SubGroup : " + clsDetails.ProductSubGroupName;

				string task = Common.Decrypt(Request.QueryString["task"].ToString(),Session.SessionID);
				switch(task)
				{
					case "add":
						stHeading = "Register New Variation";	
						SearchIndex = SearchCategoryID.ProductVariations;
						ctrlInsert.Visible = true;
						break;
					case "edit":
						stHeading = "Modify Variation";
						SearchIndex = SearchCategoryID.ProductVariations;
						ctrlUpdate.Visible = true;
						break;   
					case "list":
						stHeading = "Variations List";		
						SearchIndex = SearchCategoryID.ProductVariations;
						ctrlList.Visible = true;
						break;		
					default:	
						break;
				}

				LargeHeading.Text = stHeading + groupCode;
				RightBodySectionSearch.SearchIDSelectedItem = SearchIndex;
			}
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		private void InitializeComponent()
		{    

		}
		#endregion
	}
}
