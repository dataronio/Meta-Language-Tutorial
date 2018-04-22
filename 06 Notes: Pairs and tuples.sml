(* 
pairs: 2-tuples

BUILDING:

Syntax:  (e1,e2)

(e1, e2) ->  (v1,v2)

if e1 : type1 and e2 : type2.

so the pair-expression (e1,e2) has type type1 * type2 


ACCESSSING: 

if e is the pair (e1,e2)


accessing them is done by #1 e  or #2 e *)

(*examples*)


fun swap ( pr : int * int) =
    (#2 pr, #1 pr)


fun sum_two_pairs (pr1 : int * int , pr2 : int * int ) =
    (#1 pr1) + (#2 pr1) + (#1 pr2) + (#2 pr2)













