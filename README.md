## Cobol To Csv

This project converts Cobol data files to Csv files using a Cobol copybook.
It can be called from java or the older (and limited) batch interface.

This project uses

* [cb2xml](https://github.com/bmTas/cb2xml)
* [JRecord](https://github.com/bmTas/JRecord)


### Java Interace

For a **single record** file you can do

~~~java

		ICobolIOBuilder iob = Cobol2CsvInterface.COBOL.newIOBuilder(Data.DTAR020_COPYBOOK_FILE_NAME)
				.setFileOrganization(IFileStructureConstants.IO_FIXED_LENGTH)
				.setFont("cp037");
		
		StringWriter sw = new StringWriter();
		try {
			Cobol2CsvInterface.SINGLE_RECORD_FILES.newCobol2CsvSingleRecordBuilder(iob)
				.setInputFileName("/home/bruce/.RecordEditor/HSQLDB/SampleFiles/DTAR020.bin")
				.setGenerateHeader(true)
				.writeCsv(sw);
		} finally {
			System.out.println(sw);
		}


~~~

for **mulit-record** files you can do

~~~

		String poDownloadCobolFileName = Data.AMS_PO_COBOL_COPYBOOK_FILE_NAME;
		URL resource = Data.AMS_PO_DATA_RESOUCE;
		ICobolIOBuilder ioBldr = CobolToCsvBldr.newCobolIOBuilder(poDownloadCobolFileName)
					.setFont(Conversion.DEFAULT_ASCII_CHARSET)
					.setFileOrganization(IFileStructureConstants.IO_BIN_TEXT)
					.setSplitCopybook(CopybookLoader.SPLIT_01_LEVEL)
					.setRecordDecider(JRecordInterface1.RECORD_DECIDER_BUILDER.singleFieldDeciderBuilder("Record-Type", false)
									.addRecord("H1", "PO-Record")
									.addRecord("D1", "Product-Record")
									.addRecord("S1", "Location-Record")
									.setCaseSensitive(false)
								.build()
					);


		CobolToCsvBldr.newMultiRecordCsvBuilder()
					.setCsvHeader(true)
					.setSeparator(":")
					.setLineReader(ioBldr.newReader(resource.openStream()))
					.setOutputFile("/home/bruce/work/temp/colonAmsPo_{record}.csv", "{record}")
				.run();


~~~

This will create a seperate Csv file each record Type.


### batch Interface

There is the older batch interface (which will not be upgraded): 

~~~

java -jar ../lib/Cobol2Csv.jar -I In/Test1-a.bin  -O Out/o_Test1-ab.csv  -C Test1.cbl  -Q DoubleQuote   -FS Fixed_Length    -D ;
java -jar ../lib/Cobol2Csv.jar -I In/Test1-a.bin  -O Out/o_Test1-ac.csv  -C Test1.cbl  -Q '   -FS Fixed_Length    -D ,

java -jar ../lib/Cobol2Csv.jar -I In/DTAR020.bin  -O Out/o_DTAR020_ra.csv  -C DTAR020.cbl  -FS Fixed_Length    -IC CP037 -D bar -Rename leave_Asis
java -jar ../lib/Cobol2Csv.jar -I In/DTAR020.bin  -O Out/o_DTAR020_rb.csv  -C DTAR020.cbl  -FS Fixed_Length    -IC CP037 -D bar -Rename Change_Minus_To_Undescore
java -jar ../lib/Cobol2Csv.jar -I In/DTAR020.bin  -O Out/o_DTAR020_rc.csv  -C DTAR020.cbl  -FS Fixed_Length    -IC CP037 -D bar -Rename Drop_Minus              

~~

to Convert Csv to Cobol:

~~~

java -jar ../lib/Csv2Cobol.jar -O Out/o_DTAR020_b.bin  -I In/DTAR020_b.csv  -C DTAR020.cbl  -Q '             -FS Fixed_Length    -OC CP037 -D ,

java -jar ../lib/Csv2Cobol.jar -O Out/o_Test1-aa.bin   -I In/Test1-aa.csv   -C Test1.cbl    -Q DoubleQuote   -FS Fixed_Length    -D ,


~~~