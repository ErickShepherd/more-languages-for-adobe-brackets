---------1---------2---------3---------4---------5---------6---------7---------8
12345678911234567892123456789312345678941234567895123456789612345678971234567898
000001* Accessed by:    Erick Edward Shepherd
000002* Accessed on:    2018-06-06
000003* Language:       COBOL
000004* Source entity:  CodeMirror
000005* Source site:    codemirror.net/mode/cobol/index.html
000006* 
000007* Purpose:        Example to test plugin success in syntax highlighting.
000008* 
000009* License:        MIT License
000010* 
000011*                 Copyright (C) 2017 by Marijn Haverbeke  
000012*                 <marijnh@gmail.com> and others.
000013* 
000014*                 Permission is hereby granted, free of charge, to any  
000015*                 person obtaining a copy of this software and associated 
000016*                 documentation  files (the "Software"), to deal in the  
000017*                 Software without restriction, including without 
000018*                 limitation the rights to use, copy, modify, merge, 
000019*                 publish, distribute, sublicense, and/or sell copies of 
000020*                 the Software, and to permit persons to whom the Software
000021*                 is furnished to do so, subject to the following 
000022*                 conditions:
000023* 
000024*                 The above copyright notice and this permission notice 
000025*                 shall be included in all copies or substantial portions 
000026*                 of the Software.
000027* 
000028*                 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF 
000001*                 ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
000029*                 TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
000030*                 PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT 
000031*                 SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
000032*                 CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION 
000033*                 OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR 
000034*                 IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
000035*                 DEALINGS IN THE SOFTWARE.
000036* 
000037 IDENTIFICATION DIVISION.                                        MODTGHERE
000038 PROGRAM-ID.       SAMPLE.
000039 AUTHOR.           TEST SAM. 
000040 DATE-WRITTEN.     5 February 2013
000041
000042* A sample program just to show the form.
000043* The program copies its input to the output,
000044* and counts the number of records.
000045* At the end this number is printed.
000046
000050 ENVIRONMENT DIVISION.
000060 INPUT-OUTPUT SECTION.
000070 FILE-CONTROL.
000080     SELECT STUDENT-FILE     ASSIGN TO SYSIN
000090         ORGANIZATION IS LINE SEQUENTIAL.
000100     SELECT PRINT-FILE       ASSIGN TO SYSOUT
000110         ORGANIZATION IS LINE SEQUENTIAL.
000120
000130 DATA DIVISION.
000140 FILE SECTION.
000150 FD  STUDENT-FILE
000160     RECORD CONTAINS 43 CHARACTERS
000170     DATA RECORD IS STUDENT-IN.
000180 01  STUDENT-IN              PIC X(43).
000190
000200 FD  PRINT-FILE
000210     RECORD CONTAINS 80 CHARACTERS
000220     DATA RECORD IS PRINT-LINE.
000230 01  PRINT-LINE              PIC X(80).
000240
000250 WORKING-STORAGE SECTION.
000260 01  DATA-REMAINS-SWITCH     PIC X(2)      VALUE SPACES.
000261 01  RECORDS-WRITTEN         PIC 99.
000270
000280 01  DETAIL-LINE.
000290     05  FILLER              PIC X(7)      VALUE SPACES.
000300     05  RECORD-IMAGE        PIC X(43).
000310     05  FILLER              PIC X(30)     VALUE SPACES.
000311 
000312 01  SUMMARY-LINE.
000313     05  FILLER              PIC X(7)      VALUE SPACES.
000314     05  TOTAL-READ          PIC 99.
000315     05  FILLER              PIC X         VALUE SPACE.
000316     05  FILLER              PIC X(17)     
000317                 VALUE  'Records were read'.
000318     05  FILLER              PIC X(53)     VALUE SPACES.
000319
000320 PROCEDURE DIVISION.
000321
000330 PREPARE-SENIOR-REPORT.
000340     OPEN INPUT  STUDENT-FILE
000350          OUTPUT PRINT-FILE.
000351     MOVE ZERO TO RECORDS-WRITTEN.
000360     READ STUDENT-FILE
000370         AT END MOVE 'NO' TO DATA-REMAINS-SWITCH
000380     END-READ.
000390     PERFORM PROCESS-RECORDS
000410         UNTIL DATA-REMAINS-SWITCH = 'NO'.
000411     PERFORM PRINT-SUMMARY.
000420     CLOSE STUDENT-FILE
000430           PRINT-FILE.
000440     STOP RUN.
000450
000460 PROCESS-RECORDS.
000470     MOVE STUDENT-IN TO RECORD-IMAGE.
000480     MOVE DETAIL-LINE TO PRINT-LINE.
000490     WRITE PRINT-LINE.
000500     ADD 1 TO RECORDS-WRITTEN.
000510     READ STUDENT-FILE
000520         AT END MOVE 'NO' TO DATA-REMAINS-SWITCH
000530     END-READ. 
000540
000550 PRINT-SUMMARY.
000560     MOVE RECORDS-WRITTEN TO TOTAL-READ.
000570     MOVE SUMMARY-LINE TO PRINT-LINE.
000571     WRITE PRINT-LINE. 
000572
000580
