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
    
    
fun sort_a_pair ( pr : int * int ) =
    if ( #1 pr) > (#2 pr)
    then (#2 pr, #1 pr)
    else pr


sort_a_pair ( 2, 1)

(* generalizing the idea to tuples *)

(*example,                                                                                                                                                                                                         
                                                                                                                                                                                                                   
(e1,e2,e3,e4)                                                                                                                                                                                                      
                                                                                                                                                                                                                   
of type ta * tb * tc * td                                                                                                                                                                                          
                                                                                                                                                                                                                   
use #1 e, #2 e, #3 e, #4 e   to access stuff *)


(*you can nest tuples*)

val x1 = (7, (true, 9)) (* type is  int * (bool * int) *)
val x2 = #1 (#2 x1)  (*bool*)

val x3 = ( (3,5), ( (4,8) , ( 1,2) ) )
















