       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      *********************************
      * AREA DE COMENTARIOS -- REMARKS
      * AUTHOR = LEONARDO LEOMONTAGNOLLI
      * OBJETIVO = Receber e imroimir a data do sistema.
      * UTILIZAR VARIAVEIS NIVEL 01, 02 ( ESTRUTUTADA)
      * DATA = 12/07/2020
      *********************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
         02 WRK-ANO PIC 9(04) VALUES ZEROS.
         02 WRK-MES PIC 9(02) VALUES ZEROS.
         02 WRK-DIA PIC 9(02) VALUES ZEROS.

       77 WRK-NOME PICTURE X(20) VALUE SPACES.
       PROCEDURE DIVISION.
            ACCEPT  WRK-DATA FROM DATE YYYYMMDD.
            DISPLAY 'Dia :' WRK-DIA ' Do ' WRK-MES ' DE ' WRK-ANO.
            STOP RUN.
