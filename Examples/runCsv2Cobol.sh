#! /bin/sh

##
##    This will run Csv2Cobol which copies a cobol file 2 Csv
##


  java -jar ../lib/Csv2Cobol.jar -O out/o_DTAR020_a.bin  -I in/DTAR020_a.csv  -C DTAR020.cbl  -Q DoubleQuote   -FS Fixed_Length    -OC CP037 -D tab
  java -jar ../lib/Csv2Cobol.jar -O out/o_DTAR020_b.bin  -I in/DTAR020_b.csv  -C DTAR020.cbl  -Q SingleQuote   -FS Fixed_Length    -OC CP037 -D ,
   
  java -jar ../lib/Csv2Cobol.jar -O out/o_Test1-aa.bin  -I in/Test1-aa.csv  -C Test1.cbl  -Q DoubleQuote   -FS Fixed_Length    -D ,
  java -jar ../lib/Csv2Cobol.jar -O out/o_Test1-ac.bin  -I in/Test1-ac.csv  -C Test1.cbl  -Q SingleQuote   -FS Fixed_Length    -D ,
 
                                                       
  java -jar ../lib/Csv2Cobol.jar -O out/Test2-ra.txt  -I in/Test2-ra.csv  -C Test2.cbl  -FS Text     -D : -Rename leave_Asis
  java -jar ../lib/Csv2Cobol.jar -O out/Test2-rb.txt  -I in/Test2-rb.csv  -C Test2.cbl  -FS Text     -D : -Rename Change_Minus_To_Undescore
  java -jar ../lib/Csv2Cobol.jar -O out/Test2-rc.txt  -I in/Test2-rc.csv  -C Test2.cbl  -FS Text     -D : -Rename Drop_Minus              
                                          