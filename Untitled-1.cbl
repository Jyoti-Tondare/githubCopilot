IDENTIFICATION DIVISION.
PROGRAM-ID. MenuDrivenCalculator.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 NUM1          PIC 9(5) VALUE 0.
01 NUM2          PIC 9(5) VALUE 0.
01 RESULT        PIC 9(6) VALUE 0.
01 CHOICE        PIC 9 VALUE 0.

PROCEDURE DIVISION.
MAIN-PROCEDURE.
    PERFORM DISPLAY-MENU
    PERFORM UNTIL CHOICE >= 1 AND CHOICE <= 4
        DISPLAY "Enter your choice (1-4): " WITH NO ADVANCING
        ACCEPT CHOICE
        IF CHOICE < 1 OR CHOICE > 4 THEN
            DISPLAY "Invalid choice. Please enter a number between 1 and 4."
        END-IF
    END-PERFORM
    EVALUATE CHOICE
        WHEN 1
            PERFORM ADDITION
        WHEN 2
            PERFORM SUBTRACTION
        WHEN 3
            PERFORM MULTIPLICATION
        WHEN 4
            PERFORM DIVISION
    END-EVALUATE
    STOP RUN.

DISPLAY-MENU.
    DISPLAY "Menu:"
    DISPLAY "1. Addition" WITH NO ADVANCING
    DISPLAY "2. Subtraction" WITH NO ADVANCING
ADDITION.
    DISPLAY "Enter the first number: " WITH NO ADVANCING
    ACCEPT NUM1
    IF NUM1 IS NOT NUMERIC THEN
        DISPLAY "Invalid input for the first number. Please enter a valid number."
        EXIT.
    END-IF
    DISPLAY "Enter the second number: " WITH NO ADVANCING
    ACCEPT NUM2
    IF NUM2 IS NOT NUMERIC THEN
        DISPLAY "Invalid input for the second number. Please enter a valid number."
        EXIT.
SUBTRACTION.
    DISPLAY "Enter the first number: " WITH NO ADVANCING
    ACCEPT NUM1
    IF NUM1 IS NOT NUMERIC THEN
        DISPLAY "Invalid input. Please enter a valid number for the first number."
        STOP RUN
    END-IF
    DISPLAY "Enter the second number: " WITH NO ADVANCING
    ACCEPT NUM2
    IF NUM2 IS NOT NUMERIC THEN
        DISPLAY "Invalid input. Please enter a valid number for the second number."
        STOP RUN
    END-IF
    COMPUTE RESULT = NUM1 - NUM2
    DISPLAY "The result of subtraction is: " RESULT.

MULTIPLICATION.
    DISPLAY "Enter the first number: " WITH NO ADVANCING
    ACCEPT NUM1
    IF NUM1 IS NOT NUMERIC THEN
        DISPLAY "Invalid input for the first number. Please enter a valid number."
        EXIT.
    END-IF
    DISPLAY "Enter the second number: " WITH NO ADVANCING
    ACCEPT NUM2
    IF NUM2 IS NOT NUMERIC THEN
        DISPLAY "Invalid input for the second number. Please enter a valid number."
        EXIT.
    END-IF
    COMPUTE RESULT = NUM1 * NUM2
    DISPLAY "The result of multiplication is: " RESULT.

DIVISION.
    DISPLAY "Enter the first number: " WITH NO ADVANCING
    ACCEPT NUM1
    IF NUM1 IS NOT NUMERIC THEN
        DISPLAY "Invalid input for the first number. Please enter a valid number."
        EXIT.
    END-IF
    DISPLAY "Enter the second number: " WITH NO ADVANCING
    ACCEPT NUM2
    IF NUM2 IS NOT NUMERIC THEN
        DISPLAY "Invalid input for the second number. Please enter a valid number."
        EXIT.
    END-IF
    IF NUM2 = 0 THEN
        DISPLAY "Division by zero is not allowed."
    ELSE
        COMPUTE RESULT = NUM1 / NUM2
        DISPLAY "The result of division is: " RESULT.
    END-IF.
    DISPLAY "Enter the second number: " WITH NO ADVANCING
    ACCEPT NUM2
    IF NUM2 = 0 THEN
        DISPLAY "Division by zero is not allowed."
    ELSE
        COMPUTE RESULT = NUM1 / NUM2
        DISPLAY "The result of division is: " RESULT
    END-IF.



