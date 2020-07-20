       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB11.
      *********************************
      * AREA DE COMENTARIOS -- REMARKS
      * AUTHOR = LEONARDO LEOMONTAGNOLLI
      * OBJETIVO = RECEBER USUARIO E NIVEL UTILIZANDO VAR NIVEL 88
      * DATA = 12/07/2020
      *********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO PIC X(20) VALUE SPACES.
       77 WRK-NIVEL PIC 9(02) VALUE ZEROS.
        88 ADM  VALUE 01.
        88 USER  VALUE 02.
       PROCEDURE DIVISION.
          DISPLAY 'USUARIO .. '
          ACCEPT WRK-USUARIO FROM CONSOLE.

          DISPLAY 'NIVEL ...'
          ACCEPT WRK-NIVEL FROM CONSOLE.

          IF ADM
            DISPLAY ' NIVEL - ADMNISTRADOR'
          ELSE
            IF USER
              DISPLAY ' NIVEL = USUARIO '
          ELSE
              DISPLAY ' NAO AUTORIZADO'
              END-IF
          END-IF.


          STOP RUN.