/*
    This will run Cobol2Csv which copies a cobol file 2 Csv
*/


   'java -jar ../lib/Cobol2Csv.jar -I in/DTAR020.bin  -O out/o_DTAR020_a.csv  -C DTAR020.cbl  -Q DoubleQuote   -FS Fixed_Length    -IC CP037 -D tab'
   "java -jar ../lib/Cobol2Csv.jar -I in/DTAR020.bin  -O out/o_DTAR020_b.csv  -C DTAR020.cbl  -Q '             -FS Fixed_Length    -IC CP037 -D ,"
   "java -jar ../lib/Cobol2Csv.jar -InputFile in/DTAR020.bin  -OutputFile out/o_DTAR020_c.csv  -Copybook DTAR020.cbl  -Quote ' -FileStructure Fixed_Length    -InputCharacterSet CP037 -Delimiter ;"

  'java -jar ../lib/Cobol2Csv.jar -I in/Test1-a.bin  -O out/o_Test1-aa.csv  -C Test1.cbl  -Q DoubleQuote   -FS Fixed_Length    -D ,'
  'java -jar ../lib/Cobol2Csv.jar -I in/Test1-a.bin  -O out/o_Test1-ab.csv  -C Test1.cbl  -Q DoubleQuote   -FS Fixed_Length    -D ;'
  "java -jar ../lib/Cobol2Csv.jar -I in/Test1-a.bin  -O out/o_Test1-ac.csv  -C Test1.cbl  -Q '   -FS Fixed_Length    -D ,"
  "java -jar ../lib/Cobol2Csv.jar -I in/Test1-a.bin  -O out/o_Test1-ad.csv  -C Test1.cbl  -Q '   -FS Fixed_Length    -D ;"
  'java -jar ../lib/Cobol2Csv.jar -I in/Test1-a.bin  -O out/o_Test1-ae.csv  -C Test1.cbl  -Q `   -FS Fixed_Length    -D tab'
 
  'java -jar ../lib/Cobol2Csv.jar -I in/DTAR020.bin  -O out/o_DTAR020_ra.csv  -C DTAR020.cbl  -FS Fixed_Length    -IC CP037 -D bar -Rename leave_Asis'
  'java -jar ../lib/Cobol2Csv.jar -I in/DTAR020.bin  -O out/o_DTAR020_rb.csv  -C DTAR020.cbl  -FS Fixed_Length    -IC CP037 -D bar -Rename Change_Minus_To_Undescore'
  'java -jar ../lib/Cobol2Csv.jar -I in/DTAR020.bin  -O out/o_DTAR020_rc.csv  -C DTAR020.cbl  -FS Fixed_Length    -IC CP037 -D bar -Rename Drop_Minus'              

  'java -jar ../lib/Cobol2Csv.jar -I in/Test2.txt  -O out/o_Test2-ra.csv  -C Test2.cbl  -FS Text     -D : -Rename leave_Asis'
  'java -jar ../lib/Cobol2Csv.jar -I in/Test2.txt  -O out/o_Test2-rb.csv  -C Test2.cbl  -FS Text     -D : -Rename Change_Minus_To_Undescore'
  'java -jar ../lib/Cobol2Csv.jar -I in/Test2.txt  -O out/o_Test2-rc.csv  -C Test2.cbl  -FS Text     -D : -Rename Drop_Minus'              
