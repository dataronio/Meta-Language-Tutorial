(* this module is about shadowing *)
(* From Univ of Washington course *)

val a = 12

	    (*  a : int ,   a -> 10*)

val b = a * 2

		(* a -> 12 b -> 24  *)

val a = 5 (* this is not an assignment statement *)
	    (* a-> 5, b->24 *)
	    
val c = b  (* a -> 5. b -> 20,  c -> 20 *)

val d = a (* same as everything, d -> 5  *)

val a = a + 1  (* a -> 6  *)
 	       (* we are shadowing the previous value of a *)



(* how shadowing works can be explained in two alternative ways 
   - expressions in variable binding are evalutated 'eagerly', before the binding finishes,
     after evaluation, the expression producing the value is irrelevant

   - there is no way to 'assign to' a variable in ML. Can only shadow it in a later 
     environment 

*)
