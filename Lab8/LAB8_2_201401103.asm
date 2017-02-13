//PROGRAM TO FIND CUBE OF A NUMBER
.ORIG x10
.START x10

MOV W x3 R1

MOV W R1 R7	
MOV W R1 R8
CALL MULTIPLY	//FINALLY SQUARE OF NUMBER WILL BE IN R9

MOV W R9 R2	//MOV SQUARE OF NUMBER TO R2

//NOW WE NEED TO MULTIPLY THE SQUARE THAT NUMBER OF TIMES TO GET CUBE
MOV W R2 R7
MOV W R1 R8
CALL MULTIPLY

MOV W R9 R3	//FINALLY CUBE OF NUMBER WILL BE IN R3 WHIHC WE STORE IN R3

//FUNCTON TO MULTIPLY TWO NUMBERS
//R9: STORES MULTIPLICATION RESULT
//R7: STORES THE NUMBER THAT IS BEING MULTIPLIED
//R8: STORES NUMBER OF TIMES THE NUMBER NEEDS TO BE MULTIPLIED
MULTIPLY: MOV w x0 R9	
	LOOP: ADD w R7 R9
		SUB w x1 R8
		COMP w x0 R8
		JLT LOOP
		RET
.END