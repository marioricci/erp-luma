
function ComputeAmountPost()
{
	var price = 0;
	var discount = 0;
	var amount = 0;
	var inpercent = true;
	
	quantity = document.getElementById("ctrlPost_txtQuantity").value;
	price = document.getElementById("ctrlPost_txtPrice").value;
	discount = document.getElementById("ctrlPost_txtDiscount").value;
	inpercent = document.getElementById("ctrlPost_chkInPercent").checked;

	if (inpercent == true)
	{	amount = (quantity * (price - (price * discount / 100)))	}
	else
	{	amount = (quantity * (price - discount))	}
	document.getElementById("ctrlPost_txtAmount").value = amount.toFixed(3);
}

function RevertSellingPrice()
{
	document.getElementById("ctrlPost_txtSellingPrice").value = document.getElementById("ctrlPost_txtOldSellingPrice").value;
	
	ChangePriceComputeMarginByPriceMPPO(null);
}
