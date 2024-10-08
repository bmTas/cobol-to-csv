rem * -------------------------------------------------------------------
rem *
rem *  Purpose:  Convert a cobol Data file using Cobol Copybook to a Csv file
rem *   Author:  RecordEditor~CodeGen
rem * Language:  Windows bat
rem *        
rem * *------------- Keep this notice in your final code ---------------
rem * *   This code was generated by JRecord projects CodeGen program
rem * *            on the: 22 Jun 2016 7:55:5 
rem * *     from Copybook: DTAR020.cbl
rem * *           Dialect: FMT_MAINFRAME
rem * *          Template: batCbl2Csv
rem * *             Split: SPLIT_NONE   
rem * * File Organization: IO_FIXED_LENGTH   
rem * *              Font: cp037
rem * *   
rem * *    CodeGen Author: Bruce Martin
rem * *-----------------------------------------------------------------
rem *
rem * This script uses CobolToCsv package (https://sourceforge.net/projects/coboltocsv)
rem * to do Cobol <---> Csv conversion
rem *
rem *-------------------------------------------------------------------

rem java -jar ../lib/Cobol2Csv.jar 
../lib/Cobol2Csv.bat  -C DTAR020.cbl ^
                      -Delimiter , ^
                      -Quote doublequote ^
                      -IFS Fixed_Length ^
                      -IC cp037 ^
                      -I in/DTAR020.bin   ^
                      -O out/DTAR020.bin.csv
pause                              
