       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB09.
      *********************************
      * AREA DE COMENTARIOS -- REMARKS
      * AUTHOR = LEONARDO LEOMONTAGNOLLI
      * OBJETIVO = Receber e imprimir o status com EVALUATE
      * DATA = 12/07/2020
      *********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-N1 PIC 9(02) VALUE ZEROS.
       77 WRK-N2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9 VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-N1 FROM CONSOLE.
          ACCEPT WRK-N2 FROM CONSOLE.
          DISPLAY 'N1: ' WRK-N1.
          DISPLAY 'N2: ' WRK-N2.
          COMPUTE WRK-MEDIA = (WRK-N1 + WRK-N2) / 2.
            EVALUATE WRK-MEDIA
             WHEN 6 THRU 10
               DISPLAY 'APROVADO'
             WHEN 2 THRU 5,5
               DISPLAY 'RECUPERACAO'
             WHEN OTHER
                DISPLAY 'REPROVADO'
             END-EVALUATE.


          DISPLAY 'MEDIA ' WRK-MEDIA.

          STOP RUN.
