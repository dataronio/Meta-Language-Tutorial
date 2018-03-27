
(* we shall not use loops in this language, only recursion *)

fun pow ( x : int, y : int) =
    if y = 0
    then 1
    else
	x * pow (x, y -1)

fun cube ( x : int) =
    pow ( x, 3)


pow ( 2, 3)

val x = (2,3)
	    pow x

	    (* unless the function has exactly 1 input,
               paranthesis are important *)

	    (* caution:
- can not refer to later function bindings
  - helper functions must come before their uses
  - special constucts for mutual recursion *)
	    

	   
	  
	
