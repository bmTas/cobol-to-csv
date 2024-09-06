#! /bin/sh


##    This will run MultiRecordCobol2Csv which copies a MultiRecord cobol files to Csv

java -jar ../lib/MultiRecordCobol2Csv.jar -I in/DTAR020.bin  -O out/o_Mr_DTAR020_a.csv  -C DTAR020.cbl  -Q DoubleQuote   -FS Fixed_Length    -IC CP037 -D tab

java -jar ../lib/MultiRecordCobol2Csv.jar \
                   -C amsPoDownload.cbl  \
                   -I in/Ams_PODownload_20041231.txt  -O out/o_Colon_Ams_1.csv \
                   -Q DoubleQuote   -FS Text   -D : \
                   -addRecordName yes \
                   -split 01 \
                   -recordSelection PO-Record Record-Type=H1 \
                   -recordSelection Product-Record  Record-Type=D1 \
                   -recordSelection Location-Record Record-Type=S1


java -jar ../lib/MultiRecordCobol2Csv.jar \
                   -C amsPoDownload.cbl  \
                   -I in/Ams_PODownload_20041231.txt  -O out/o_Colon_Ams_2.csv \
                   -Q DoubleQuote   -FS Text   -D : \
                   -addRecordName no \
                   -split 01 \
                   -recordSelection PO-Record Record-Type=H1 \
                   -recordSelection Product-Record  Record-Type=D1 \
                   -recordSelection Location-Record Record-Type=S1


java -jar ../lib/MultiRecordCobol2Csv.jar \
                   -C amsPoDownload.cbl  \
                   -I in/Ams_PODownload_20041231.txt  -O out/o_comma_Ams_3_{record}.csv \
                   -Q DoubleQuote   -FS Text   -D , \
                   -addRecordName no \
                   -split 01 \
                   -recordSelection PO-Record Record-Type=H1 \
                   -recordSelection Product-Record  Record-Type=D1 \
                   -recordSelection Location-Record Record-Type=S1

