namespace AceSoft.RetailPlus
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	public partial  class __LargeHeading : System.Web.UI.UserControl
	{
		private const string defaultText = "Home";
		
		private string mstText = defaultText;

		public string Text
		{
			get
			{
				return mstText;
			}
			set
			{
				mstText = value;
			}
		}

		protected void Page_Load(object sender, System.EventArgs e)
		{
			lblText.Text = mstText;
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
		
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion
	}
}
