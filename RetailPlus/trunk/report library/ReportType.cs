﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AceSoft.RetailPlus
{
    public struct ReportTypes
    {
        public const string ProductList = "Product List";
        public const string ProductPriceList = "Product Price List";
        public const string WeightedProductsForWeighingScale = "Weighted Products For Weighing Scale";
        public const string CountedProductsForWeighingScale = "Counted Products For Weighing Scale";

        public const string ProductHistoryMovement = "Product History";
        public const string ProductHistoryPrice = "Price History";
        public const string ProductHistoryMostSaleable = "Most Saleable Items";
        public const string ProductHistoryLeastSaleable = "Least Saleable Items";

        public const string InventoryPerBranch = "Inventory Per Branch";
        public const string DetailedInventory = "Detailed Inventory";
        public const string DetailedInventoryWQtyInOut = "Detailed Inventory w/ Qty-In & Qty-Out";
        public const string SummarizedInventory = "Summarized Inventory";
        public const string SummarizedInventoryWQtyInOut = "Summarized Inventory w/ Qty-In & Qty-Out";
        public const string ForPhysicalInventory = "For Physical Inventory";
        public const string TotalStockInventoryDetailed = "Total Stock Inventory Detailed";
        public const string TotalStockInventorySummarized = "Total Stock Inventory Summarized";
        public const string TotalStockInventoryWSupplier = "Total Stock Inventory w/ Supplier";
        public const string ItemsForReOrder = "Items For Re-Order";
        public const string OverStockItems = "Over Stock Items";
        public const string ExpiredInventory = "Expired Inventory";

        public const string CustomerCredit = "Customer Individual Credit";
        public const string CustomerCreditBill = "Customer Individual Latest Bill";
        public const string CustomerCreditListWCredit = "Customer's List w/ Credit";
        public const string CustomerCreditListLatestBill = "Customer's List Latest Bill";

        public const string SalesPerHour = "Sales Per Hour";
        public const string SalesPerDay = "Sales Per Day";
        public const string SalesPerDayWithTF = "Sales Per Day With TF";
        public const string SummarizeDailySales = "Summarize Daily Sales";
        public const string SummarizeDailySalesWithTF = "Summarize Daily Sales With TF";

        public const string SalesTransactions = "Sales Transactions";
        public const string SalesTransactionPerCustomer = "Sales Transaction Per Customer";
        public const string SalesTransactionPerCashier= "Sales Transaction Per Cashier";
        public const string SalesTransactionPerCashierPerCustomer = "Sales Transaction Per Cashier PerCustomer";
        public const string SalesTransactionPerTerminal = "Sales Transaction Per Terminal";
        public const string SalesTransactionPerItem = "Sales Transaction Per Item";
        public const string CashSalesDaily = "Cash-Sales Daily";
        public const string CashSalesMonthly = "Cash-Sales Monthly";
        public const string ChequeSalesDaily = "Cheque-Sales Daily";
        public const string ChequeSalesMonthly = "Cheque-Sales Monthly";
        public const string CreditCardSalesDaily = "Credit Card-Sales Daily";
        public const string CreditCardSalesMonthly = "Credit Card-Sales Monthly";

        public const string DailySalesTransaction = "Daily Sales Transaction";
        public const string WeeklySalesTransaction = "Weekly Sales Transaction";
        public const string MonthlySalesTransaction = "Monthly Sales Transaction";
        public const string PaidOut = "Paid Out";
        public const string Disburse = "Disburse";
        public const string RecieveOnAccount = "Recieve-On-Account";

        public const string REPORT_SELECTION_SEPARATOR = "---------------------------------------------";
        public const string REPORT_SELECTION = "Select Report Type";
    }

    
}
