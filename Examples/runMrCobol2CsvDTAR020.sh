#! /bin/sh


##    This will run MultiRecordCobol2Csv which copies a MultiRecord cobol files to Csv

java -jar ../lib/MultiRecordCobol2Csv.jar \
                   -C DTAR020.cbl  \
                   -I in/DTAR020_CsvTst.bin  -O out/o_DTAR020_tcsv1.csv \
                   -Q DoubleQuote   -FS Fixed_Length    -IC CP037   -D : \
                   -reportInvalid yes

java -jar ../lib/MultiRecordCobol2Csv.jar \
                   -C DTAR020.cbl  \
                   -I in/DTAR020_CsvTst.bin  -O out/o_DTAR020_tcsv2.csv \
                   -Q DoubleQuote   -FS Fixed_Length    -IC CP037   -D : \
                   -lowValuesText LOW   -highValuesText   HIGH   \
                   -numericSpacesText SPACES
