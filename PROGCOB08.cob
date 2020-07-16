       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      *********************************
      * AREA DE COMENTARIOS -- REMARKS
      * AUTHOR = LEONARDO LEOMONTAGNOLLI
      * OBJETIVO = Receber e imprimir o status com if
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
       77 WRK-MEDIA PIC 9(04) VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-N1 FROM CONSOLE.
          ACCEPT WRK-N2 FROM CONSOLE.
          DISPLAY 'N1: ' WRK-N1.
          DISPLAY 'N2: ' WRK-N2.
          COMPUTE WRK-MEDIA = (WRK-N1 + WRK-N2) / 2.
            IF WRK-MEDIA >=6 THEN
               DISPLAY 'APROVADO'.


            IF WRK-MEDIA < 6  THEN
              DISPLAY 'REPROVADO'.



          DISPLAY 'MEDIA ' WRK-MEDIA.

          STOP RUN.
