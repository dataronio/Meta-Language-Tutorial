(* this is a comment *)


(*
variable binding is done in two 'parts'
- type check expressions --and extend static envr
- evaluate expressions  -- and extend dynamic envr
*)



val x = 100; (* int *)

val y = 123;
	   
val z = (x + y)- 23;

(*type checking is done before the program is run *)
(* that is,
   it has early binding, which means compile time binding - type is known before the variable is used during run-time [example reflection];  as opposed to..
..        late  binding, which means run time binding - type is unknown until the variable is used during run-time *)


(* 
the dynamic enviornment modifies the values of the variables in real time x --> 100, y --> 123 etc. 
The static environment maintains the data types of the variables
*)

(* static env doesn't run the program, just type checks. Again, type checking comes before evaluation *)


val absolute_z = if z < 0 then 0 - z else z ;

val absolute = abs z
		   (* static env: absolute : int   *)
		   (* dynamic env  absolute --> 200 )

