#Lösung Aufgabe 1 Funktionen

	4 Byte
<---------------------------->	
------------------------------	
- Rücksprungadresse          -	<------- oberste Speicheradresse (links)
- alter EBP                  - 	<-- ebp 
- int_1                      -
- int_2                      -
- int_3                      -
- int_4                      -
- int_5                      -    
- int_6                      -
- string_19 bis string_16    -
- string_15 bis string_12    -
- string_11 bis string_8     -
- string_7 bis string_4      - 
- string_3 bis string_0      -
- double_high_1              -
- double_low_1               -
- double_high_2              -
- double_low_2               - <-- esp  <------- unterste Speicheradresse (rechts)     
------------------------------   


Wird die Länge des strings nicht berücksichtigt und 30 Zeichen kopiert, dann werden int_5 und int_6 komplett und int_4 zur Hälfte überschrieben.

#Lösung Aufgabe 2 Funktionen


	4 Byte
<----------------------------->
-------------------------------
- Rücksprungadresse von A     -	<------- oberste Speicheradresse (links)
- alter EBP von A             -	<-- ebp von A
- int i                       -
- int j                       -
- int k                       -
- char a char b <leer> <leer> -
- Rücksprungadresse von B     -
- alter EBP von B             -	<-- epb von B
- int l                       -
- int m                       -
- double x high               -
- double x low                -
- double y high               -
- double y low                - <-- esp <------- unterste Speicheradresse (rechts)
-------------------------------


#Lösung Aufgabe 3 Funktionen

Um Parameter zu übergeben eignet sich auch der Stack. Die Parameter werden von rechts nach links auf den Stack gelegt um dann einfach durch verschieben von esp in der Funktion abrufbar zu sein. Hier wäre der erste Parameter bei esp+4
Rückgabewerte werden immer in eax bzw ebx gelegt. Alternativ könnte man dafür auch den Stack verwenden, man müsste nur vor dem Funktionsaufruf Platz auf dem Stack schaffen indem man esp runterzählt
