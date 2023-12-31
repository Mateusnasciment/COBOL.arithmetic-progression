IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRESSAO.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 NUM-INICIAL PIC 9(4).
01 RAZAO PIC 9(4).
01 QTDE-TERMOS PIC 9(4).
01 CONTADOR PIC 9(4).
01 TERMOS OCCURS 100 TIMES.
   05 TERMOS-VALOR PIC 9(9).

PROCEDURE DIVISION.
MAIN-LOGIC.
    DISPLAY "Digite o valor inicial da progressão: ".
    ACCEPT NUM-INICIAL.
    DISPLAY "Digite a razão da progressão: ".
    ACCEPT RAZAO.
    DISPLAY "Digite a quantidade de termos da progressão: ".
    ACCEPT QTDE-TERMOS.

    MOVE NUM-INICIAL TO TERMOS-VALOR(1).
    PERFORM VARYING CONTADOR FROM 2 BY 1 UNTIL CONTADOR > QTDE-TERMOS
        COMPUTE TERMOS-VALOR(CONTADOR) = TERMOS-VALOR(CONTADOR - 1) + RAZAO
    END-PERFORM.

    DISPLAY "Termos da progressão:"
    PERFORM VARYING CONTADOR FROM 1 BY 1 UNTIL CONTADOR > QTDE-TERMOS
        DISPLAY "Termo " CONTADOR ":" TERMOS-VALOR(CONTADOR)
    END-PERFORM.

    STOP RUN.
