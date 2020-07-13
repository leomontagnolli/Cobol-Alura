       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      *********************************
      * AREA DE COMENTARIOS -- REMARKS
      * AUTHOR = LEONARDO LEOMONTAGNOLLI
      * OBJETIVO = OPERADORES ARITIMETICOS
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
       77 WRK-RESU PIC 9(04) VALUE ZEROS.
       77 WRK-RESTO PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-N1 FROM CONSOLE.
          ACCEPT WRK-N2 FROM CONSOLE.
      ****************** soma
          DISPLAY 'N1: ' WRK-N1.
          DISPLAY 'N2: ' WRK-N2.
          ADD WRK-N1 WRK-N2 TO WRK-RESU

          DISPLAY 'Soma: ' WRK-RESU.

      ****************** subtracao
          SUBTRACT WRK-N1 FROM WRK-N2 GIVING WRK-RESU.
          DISPLAY 'Subtracacao ' WRK-RESU.
      ****************** divisao
          DIVIDE WRK-N1 BY WRK-N2 GIVING WRK-RESU
           REMAINDER WRK-RESTO.
          DISPLAY 'Divisao ' WRK-RESU.
          DISPLAY 'resto ' WRK-RESTO.
      ***************** multiplicao
          MULTIPLY WRK-N1 BY WRK-N2 GIVING WRK-RESU.
          DISPLAY 'Multiplicao ' WRK-RESU.

      ***************** compute
          COMPUTE WRK-RESU = (WRK-N1 + WRK-N2) / 2.
          DISPLAY 'MEDIA ' WRK-RESU.

          STOP RUN.
