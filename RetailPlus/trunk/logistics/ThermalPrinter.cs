﻿using System;
using System.Collections.Generic;
using System.Text;

using System.Runtime.InteropServices;

namespace AceSoft
{
    public class TSCLIB_DLL
    {
        [DllImport("TSCLIB.dll", EntryPoint = "about")]
        public static extern int about();

        [DllImport("TSCLIB.dll", EntryPoint = "openport")]
        public static extern int openport(string printername);

        [DllImport("TSCLIB.dll", EntryPoint = "barcode")]
        public static extern int barcode(string x, string y, string type,
                    string height, string readable, string rotation,
                    string narrow, string wide, string code);

        [DllImport("TSCLIB.dll", EntryPoint = "clearbuffer")]
        public static extern int clearbuffer();

        [DllImport("TSCLIB.dll", EntryPoint = "closeport")]
        public static extern int closeport();

        [DllImport("TSCLIB.dll", EntryPoint = "downloadpcx")]
        public static extern int downloadpcx(string filename, string image_name);

        [DllImport("TSCLIB.dll", EntryPoint = "formfeed")]
        public static extern int formfeed();

        [DllImport("TSCLIB.dll", EntryPoint = "nobackfeed")]
        public static extern int nobackfeed();

        [DllImport("TSCLIB.dll", EntryPoint = "printerfont")]
        public static extern int printerfont(string x, string y, string fonttype,
                        string rotation, string xmul, string ymul,
                        string text);

        [DllImport("TSCLIB.dll", EntryPoint = "printlabel")]
        public static extern int printlabel(string set, string copy);

        [DllImport("TSCLIB.dll", EntryPoint = "sendcommand")]
        public static extern int sendcommand(string printercommand);

        [DllImport("TSCLIB.dll", EntryPoint = "setup")]
        public static extern int setup(string width, string height,
                  string speed, string density,
                  string sensor, string vertical,
                  string offset);

        [DllImport("TSCLIB.dll", EntryPoint = "windowsfont")]
        public static extern int windowsfont(int x, int y, int fontheight,
                        int rotation, int fontstyle, int fontunderline,
                        string szFaceName, string content);

    }

    public class ThermalBarCodePrinter
    {
        public bool PrintShelvesTag(string strProductCode, string strBarcode, string strPrice)
        {
            bool boRetValue = false;

            if (strBarcode.Length < 13) strBarcode.PadLeft(13, '0');

            // 28.50 downward and kain
            // 28.00 upward and kain
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Hello TSCLIB.DLL')", true);
            //TSCLIB_DLL.about();                                                                 //Show the DLL version
            TSCLIB_DLL.openport("RetailPlusBarCodePrinter");                                           //Open specified printer driver
            TSCLIB_DLL.setup("300", "28.375", "4", "8", "0", "0", "0");                           //Setup the media size and sensor type info
            TSCLIB_DLL.clearbuffer();                                                           //Clear image buffer

            TSCLIB_DLL.windowsfont(50, 25, 38, 0, 2, 0, "ARIAL", strProductCode);  //Draw Product Code
            TSCLIB_DLL.windowsfont(60, 55, 25, 0, 0, 0, "ARIAL NARROW", DateTime.Now.ToString("yyyyMMdd"));  //Draw Print Date
            TSCLIB_DLL.barcode("60", "77", "128", "98", "1", "0", "2", "2", strBarcode); //Drawing barcode

            int iPriceFontHeight = 138;
            if (strPrice.Length <= 6)
            { iPriceFontHeight = 140; }
            else { iPriceFontHeight = 90; }
            TSCLIB_DLL.windowsfont(348, 57, iPriceFontHeight, 0, 2, 0, "ARIAL NARROW", strPrice);  //Draw Price

            //TSCLIB_DLL.printerfont("100", "250", "3", "0", "1", "1", "Print Font Test");        //Drawing printer font
            //TSCLIB_DLL.windowsfont(100, 300, 24, 0, 0, 0, "ARIAL", "Windows Arial Font Test");  //Draw windows font
            ////TSCLIB_DLL.downloadpcx("C:\\ASP.NET_in_VCsharp_2008\\ASP.NET_in_VCsharp_2008\\UL.PCX", "UL.PCX");                                         //Download PCX file into printer
            //TSCLIB_DLL.downloadpcx("UL.PCX", "UL.PCX");                                         //Download PCX file into printer
            //TSCLIB_DLL.sendcommand("PUTPCX 100,400,\"UL.PCX\"");                                //Drawing PCX graphic
            TSCLIB_DLL.printlabel("1", "1");                                                    //Print labels
            TSCLIB_DLL.closeport();

            boRetValue = true;

            return boRetValue;
        }
        public bool PrintUserAccess(string UserFullName, string strBarcode)
        {
            bool boRetValue = false;

            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Hello TSCLIB.DLL')", true);
            //TSCLIB_DLL.about();                                                                 //Show the DLL version
            TSCLIB_DLL.openport("RetailPlusBarCodePrinter");                                           //Open specified printer driver
            TSCLIB_DLL.setup("300", "28.375", "4", "8", "0", "0", "0");                           //Setup the media size and sensor type info
            TSCLIB_DLL.clearbuffer();                                                           //Clear image buffer

            TSCLIB_DLL.windowsfont(60, 55, 25, 0, 0, 0, "ARIAL NARROW", DateTime.Now.ToString("yyyyMMdd"));  //Draw Print Date
            TSCLIB_DLL.barcode("60", "77", "128", "98", "0", "0", "2", "2", strBarcode); //Drawing barcode
            TSCLIB_DLL.windowsfont(60, 185, 25, 0, 0, 0, "ARIAL NARROW", UserFullName);  //Draw Print Date

            //TSCLIB_DLL.printerfont("100", "250", "3", "0", "1", "1", "Print Font Test");        //Drawing printer font
            //TSCLIB_DLL.windowsfont(100, 300, 24, 0, 0, 0, "ARIAL", "Windows Arial Font Test");  //Draw windows font
            ////TSCLIB_DLL.downloadpcx("C:\\ASP.NET_in_VCsharp_2008\\ASP.NET_in_VCsharp_2008\\UL.PCX", "UL.PCX");                                         //Download PCX file into printer
            //TSCLIB_DLL.downloadpcx("UL.PCX", "UL.PCX");                                         //Download PCX file into printer
            //TSCLIB_DLL.sendcommand("PUTPCX 100,400,\"UL.PCX\"");                                //Drawing PCX graphic
            TSCLIB_DLL.printlabel("1", "1");                                                    //Print labels
            TSCLIB_DLL.closeport();

            boRetValue = true;

            return boRetValue;
        }
    }
}
