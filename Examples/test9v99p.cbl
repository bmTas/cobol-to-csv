      ********************************************************************
      * Purpose: Testing pictures like 99V99+ work correctly
      * Author:  Bruce Martin
      ********************************************************************
      
       01  Test-Record.
           05  p9999V99p               pic 9999V99+.
           05                          pic x.
           05  p9999V99m               pic 9999V99-.
           05                          pic x.
           05  pp9999V99               pic +9999V99.
           05                          pic x.
           05  pm9999V99               pic -9999V99.     
           05                          pic x.
           05  ps9999d99               pic s9999.99.
 