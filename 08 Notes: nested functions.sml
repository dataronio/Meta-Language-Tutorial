(* nested functions *)


(* we can define neest-fxns using let *)

(* the functions are written as bindings 
  let b1 b2 ... bn in e end 
 *)


(* using helper fxns: *)

fun count ( from : int, to : int) =
    if from=to
    then to::[]
    else from :: count (from+1, to)

		       (* that's the helper *)

		       (* a counter fromm 1 to x *)

fun countup_from1 ( x : int) =
    count ( 1, x)



fun countup_from1_new ( x : int ) =
    let
	fun count_ ( from : int, to : int )=
	    if from=to
	    then to::[]
	    else from :: count_ ( from+1, to)
    in
	count_ (1,x)
    end
	
(* we see that count_ is not really visible in the dynmaic enviornment *)

	
(* we can remove the var 'to' in the binding function in let, you can use the 
    parameter 'x'. AS 'to' never changes *)


fun countup2 ( x : int ) =
    let
	fun count_ ( from : int ) =
	    if from=x
	    then x::[]
	    else from :: count_ ( from+1)
    in 
	count_ (2)
    end
	

(* count_ is still NOT in the enviornment when you run this program in your REPL
   count_ is only in the countup2 environment *)

	
