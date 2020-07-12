       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      *********************************
      * AREA DE COMENTARIOS -- REMARKS
      * AUTHOR = LEONARDO LEOMONTAGNOLLI
      * OBJETIVO = Receber e imprimir uma variavel.
      * DATA = 12/07/2020
      *********************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PICTURE X(20) VALUE SPACES.
       PROCEDURE DIVISION.
            ACCEPT  WRK-NOME FROM CONSOLE.
            DISPLAY 'Nome ' WRK-NOME.
            STOP RUN.
