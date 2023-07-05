# COBOL.average-progression



In this COBOL code, we start by declaring the program identifier as "PROGRESSION" and define the necessary variables in the WORKING-STORAGE section. We have NUM-INICIAL to store the initial value of the progression, RAZAO to store the reason for the progression, QTDE-TERMOS to store the number of terms and COUNTER to control the loops.

In the PROCEDURE DIVISION section, we have the main logic of the program. First, we display messages for the user to enter the initial value, reason and number of progression terms. We use the ACCEPT statement to store the entered values ​​in the respective variables.

We then move the initial value to the first element of the VALUE-TERMS array, which represents the first term of the progression.

We use a PERFORM loop to calculate the subsequent terms of the progression. We start with COUNT equal to 2 and continue until COUNT is greater than QTY-TERMS. At each iteration, we use the COMPUTE statement to calculate the value of the current term (VALUE-TERMS(COUNTER)) by adding the previous term (VALUE-TERMS(COUNTER - 1)) and the ratio.

After calculating all the terms, we display the message "Terms in the progression:" and then use another PERFORM loop to display each term in the progression. The loop starts with COUNT equal to 1 and continues until COUNT is greater than QTY-TERMS. At each iteration, we display the message "Term X:" followed by the value of the term (VALUE-TERMS(COUNTER)).

Finally, we use the STOP RUN instruction to end program execution.

This program calculates and displays the terms of an arithmetic progression based on user-supplied values. It uses loops and the OCCURS structure to store terms in an array. The program logic is relatively simple, allowing users to understand and use COBOL arithmetic progression efficiently.

It is important to point out that the provided code contains an array with a maximum size of 100 elements (OCCURS 100 TIMES). If you need a larger number of terms, you need to adjust the array size to accommodate that amount.
