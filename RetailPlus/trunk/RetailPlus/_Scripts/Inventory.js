
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

function ComputeQuantity(obj)
{
    var ctrlCloseInventory_lstItem = "ctrlCloseInventory_lstItem_";
	var txtActualQuantity = obj.id;
	var decActualQuantity = obj.value;
	
	var txtPOSQuantity = ctrlCloseInventory_lstItem + txtActualQuantity.substr(27).replace("txtActualQuantity", "txtPOSQuantity");
	var txtOver = ctrlCloseInventory_lstItem + txtActualQuantity.substr(27).replace("txtActualQuantity", "txtOver");
	var txtShort = ctrlCloseInventory_lstItem + txtActualQuantity.substr(27).replace("txtActualQuantity", "txtShort");
	var txtAmountShort = ctrlCloseInventory_lstItem + txtActualQuantity.substr(27).replace("txtActualQuantity", "txtAmountShort");
	var txtAmountOver = ctrlCloseInventory_lstItem + txtActualQuantity.substr(27).replace("txtActualQuantity", "txtAmountOver");
	var txtPurchasePrice = ctrlCloseInventory_lstItem + txtActualQuantity.substr(27).replace("txtActualQuantity", "txtPurchasePrice");
	
	var decPOSQuantity = document.getElementById(txtPOSQuantity).value;
	var decDifference = decPOSQuantity - decActualQuantity;
	var decPurchasePrice = document.getElementById(txtPurchasePrice).value;
	var decAmountShortOver = decPurchasePrice * decDifference;
	
	if (decDifference > 0)
	{   
        document.getElementById(txtShort).value = decDifference.toFixed(3);
        document.getElementById(txtOver).value = "0.00";   
        
        document.getElementById(txtAmountShort).value = decAmountShortOver.toFixed(3);
        document.getElementById(txtAmountOver).value = "0.00";    
    }
	else
    {   
        document.getElementById(txtShort).value = "0.00"; 
        decDifference = decDifference * -1;
        document.getElementById(txtOver).value = decDifference.toFixed(3);   
        
        document.getElementById(txtAmountShort).value = "0.00"; 
        decAmountShortOver = decAmountShortOver * -1;
        document.getElementById(txtAmountOver).value = decAmountShortOver.toFixed(3);     
    }
}

function ComputeQuantityByVariation(obj)
{
    var ctrlCloseInventory_lstItem = "ctrlCloseInventoryDetailed_lstItem_";
	var txtActualQuantity = obj.id;
	var decActualQuantity = obj.value;
	
	var txtPOSQuantity = ctrlCloseInventory_lstItem + txtActualQuantity.substr(35).replace("txtActualQuantity", "txtPOSQuantity");
	var txtOver = ctrlCloseInventory_lstItem + txtActualQuantity.substr(35).replace("txtActualQuantity", "txtOver");
	var txtShort = ctrlCloseInventory_lstItem + txtActualQuantity.substr(35).replace("txtActualQuantity", "txtShort");
	var txtAmountShort = ctrlCloseInventory_lstItem + txtActualQuantity.substr(35).replace("txtActualQuantity", "txtAmountShort");
	var txtAmountOver = ctrlCloseInventory_lstItem + txtActualQuantity.substr(35).replace("txtActualQuantity", "txtAmountOver");
	var txtPurchasePrice = ctrlCloseInventory_lstItem + txtActualQuantity.substr(35).replace("txtActualQuantity", "txtPurchasePrice");
	
	var decPOSQuantity = document.getElementById(txtPOSQuantity).value;
	var decDifference = decPOSQuantity - decActualQuantity;
	var decPurchasePrice = document.getElementById(txtPurchasePrice).value;
	var decAmountShortOver = decPurchasePrice * decDifference;
	
	if (decDifference > 0)
	{   
        document.getElementById(txtShort).value = decDifference.toFixed(3);
        document.getElementById(txtOver).value = "0.00";   
        
        document.getElementById(txtAmountShort).value = decAmountShortOver.toFixed(3);
        document.getElementById(txtAmountOver).value = "0.00";    
    }
	else
    {   
        document.getElementById(txtShort).value = "0.00"; 
        decDifference = decDifference * -1;
        document.getElementById(txtOver).value = decDifference.toFixed(3);   
        
        document.getElementById(txtAmountShort).value = "0.00"; 
        decAmountShortOver = decAmountShortOver * -1;
        document.getElementById(txtAmountOver).value = decAmountShortOver.toFixed(3);     
    }
//    for (var i=0; i < document.forms[0].elements.length;i++)
//	{							
//		var e = document.forms[0].elements[i];						
//		var stName = e.name;
//		var iLen = stName.length;
//		
//		// alert("Please select at least one record." + stName);
//	}
}
//    var ctrlCloseInventory_lstItem = "ctrlCloseInventory_lstItem_";
//	var txtActualQuantity = obj.id;
//	var decActualQuantity = obj.value;
//	
//	var txtPOSQuantity = ctrlCloseInventory_lstItem + txtActualQuantity.substr(27).replace("txtActualQuantity", "txtPOSQuantity");
//	var txtOver = ctrlCloseInventory_lstItem + txtActualQuantity.substr(27).replace("txtActualQuantity", "txtOver");
//	var txtShort = ctrlCloseInventory_lstItem + txtActualQuantity.substr(27).replace("txtActualQuantity", "txtShort");
//	var txtAmountShort = ctrlCloseInventory_lstItem + txtActualQuantity.substr(27).replace("txtActualQuantity", "txtAmountShort");
//	var txtAmountOver = ctrlCloseInventory_lstItem + txtActualQuantity.substr(27).replace("txtActualQuantity", "txtAmountOver");
//	var txtPurchasePrice = ctrlCloseInventory_lstItem + txtActualQuantity.substr(27).replace("txtActualQuantity", "txtPurchasePrice");
//	
//	var decPOSQuantity = document.getElementById(txtPOSQuantity).value;
//	var decDifference = decPOSQuantity - decActualQuantity;
//	var decPurchasePrice = document.getElementById(txtPurchasePrice).value;
//	var decAmountShortOver = decPurchasePrice * decDifference;
//	
//	if (decDifference > 0)
//	{   
//        document.getElementById(txtShort).value = decDifference.toFixed(3);
//        document.getElementById(txtOver).value = "0.00";   
//        
//        document.getElementById(txtAmountShort).value = decAmountShortOver.toFixed(3);
//        document.getElementById(txtAmountOver).value = "0.00";    
//    }
//	else
//    {   
//        document.getElementById(txtShort).value = "0.00"; 
//        decDifference = decDifference * -1;
//        document.getElementById(txtOver).value = decDifference.toFixed(3);   
//        
//        document.getElementById(txtAmountShort).value = "0.00"; 
//        decAmountShortOver = decAmountShortOver * -1;
//        document.getElementById(txtAmountOver).value = decAmountShortOver.toFixed(3);     
//    }
//}
