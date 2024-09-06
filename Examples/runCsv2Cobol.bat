rem    This will run Csv2Cobol which copies a cobol file 2 Csv      
java -jar ../lib/Csv2Cobol.jar -O Out/o_DTAR020_a.bin  -I In/DTAR020_a.csv  -C DTAR020.cbl  -Q DoubleQuote   -FS Fixed_Length    -OC CP037 -D tab
java -jar ../lib/Csv2Cobol.jar -O Out/o_DTAR020_b.bin  -I In/DTAR020_b.csv  -C DTAR020.cbl  -Q '             -FS Fixed_Length    -OC CP037 -D ,

java -jar ../lib/Csv2Cobol.jar -O Out/o_Test1-aa.bin  -I In/Test1-aa.csv  -C Test1.cbl  -Q DoubleQuote   -FS Fixed_Length    -D ,
java -jar ../lib/Csv2Cobol.jar -O Out/o_Test1-ab.bin  -I In/Test1-ab.csv  -C Test1.cbl  -Q DoubleQuote   -FS Fixed_Length    -D ;
java -jar ../lib/Csv2Cobol.jar -O Out/o_Test1-ac.bin  -I In/Test1-ac.csv  -C Test1.cbl  -Q '   -FS Fixed_Length    -D ,
java -jar ../lib/Csv2Cobol.jar -O Out/o_Test1-ad.bin  -I In/Test1-ad.csv  -C Test1.cbl  -Q '   -FS Fixed_Length    -D ;
java -jar ../lib/Csv2Cobol.jar -O Out/o_Test1-ae.bin  -I In/Test1-ae.csv  -C Test1.cbl  -Q `   -FS Fixed_Length    -D tab
                                                    
java -jar ../lib/Csv2Cobol.jar -O Out/Test2-ra.txt  -I In/Test2-ra.csv  -C Test2.cbl  -FS Text     -D : -Rename leave_Asis
java -jar ../lib/Csv2Cobol.jar -O Out/Test2-rb.txt  -I In/Test2-rb.csv  -C Test2.cbl  -FS Text     -D : -Rename Change_Minus_To_Undescore
java -jar ../lib/Csv2Cobol.jar -O Out/Test2-rc.txt  -I In/Test2-rc.csv  -C Test2.cbl  -FS Text     -D : -Rename Drop_Minus             
pause