

(* benifits of no mutations *)



fun sort_pair (pr : int * int) =
	if #1 pr < #2 pr
	then pr
	else (#2 pr, #1 pr)


fun sort_pair2 (pr : int * int ) =
	if #1 pr < #2 pr
	then (#1 pr, #2 pr)
	else (#2 pr, #1 pr)

(*
in the first version above:
	we just return the pair,

in the second version:
	we create a new copy.

Both these functions can NOT be distinguished 
from each other by the users of the code.
Because the language does not allow mutation.

If mutation was allowed this wouldn't have been the case


if uou don't have mutations you can't tell if you variables are
aliases or copies. Which makes it easier to use 'sort_pair'


But no-mutation does not mean that we can never have aliased data

*)

fun append_lists ( xs : int list, ys : int list ) =
	if null xs 
	then ys
	else (hd xs)::append_lists ( tl xs, ys) 



val x = [1,2]
val y = [3,4,5]

val z = append_lists ( x,y)

(* does the final list z use objects from x or y?
   or is a totally different list copy created for each element?
   
   The answer is z uses  the objects from ys
   because in the if-then ys are returned as is and are not copied around
   elements from xs however are copied, that is new copies are created.

   The client cant tell though.

   We create aliases all the time in ML.
   the "tail" function creates an alias,
   instead of a freaking copy.
   We don't worry about aliases in ML (or other FP languages)
   because _there is NO mutation_ to worry about.	


   ***This is good because.
   Once 'z' is evaluated. We can't mutate it.
   In non-fp languages,
   Modifying 'z' would have changed the list 'y' as well.
	Immuatbility helps us not worry about it.
	
*)



