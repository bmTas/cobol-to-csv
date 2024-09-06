java -jar ../lib/Cobol2Csv.jar -I In/DTAR020.bin  -O Out/o_DTAR020_x01.csv  -C DTAR020.cbl  -Q DoubleQuote   -IFS Fixed_Length    -IC CP037 -ofs Byte_Text_NAME_1ST_LINE -oc cp1252 -D x'01'
java -jar ../lib/Cobol2Csv.jar -I In/DTAR020.bin  -O Out/o_DTAR020_x01_NoH.csv  -C DTAR020.cbl  -Q DoubleQuote   -IFS Fixed_Length    -IC CP037 -ofs Byte_Text -oc cp1252 -D x'01'
java -jar ../lib/Cobol2Csv.jar -I In/DTAR020.bin  -O Out/o_DTAR020_x01a.csv  -C DTAR020.cbl  -Q DoubleQuote   -IFS Fixed_Length    -IC CP037 -ofs Byte_Text_NAME_1ST_LINE -oc utf-8 -D x'01'
java -jar ../lib/Cobol2Csv.jar -I In/DTAR020.bin  -O Out/o_DTAR020_u0001.csv  -C DTAR020.cbl  -Q '             -FS Fixed_Length    -IC CP037 -D \u0001
java -jar ../lib/Cobol2Csv.jar -I In/DTAR020.bin  -O Out/o_DTAR020_x01c.csv  -C DTAR020.cbl  -Q '             -FS Fixed_Length    -IC CP037 -D x'01'

pause

