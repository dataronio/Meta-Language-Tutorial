(* functions on list *)

(* fxn to add up all the numbers in the list *)


fun  sum_list ( xs : int list) =
     if null xs
     then 0
     else hd xs  + sum_list( tl xs)

fun mul_list ( xs : int list ) =
    if null xs
    then 1
    else
        hd xs * mul_list ( tl xs)


fun countdown ( x : int ) =
    if x=0
    then []
    else x::countdown (x-1)


fun append ( xs : int list, ys : int list ) =
    if null xs
    then ys
    else (hd xs) :: append(  (tl xs) , ys)


fun sum_pair_list ( xs : (int * int) list ) =
    if null xs
    then 0
    else #1 (hd xs) + #2 (hd xs) + sum_pair_list (tl xs)

fun sum_pair_resolve ( xs : (int * int) list ) =
    if null xs
    then []
    else #1 (hd xs) + #2 (hd xs) ::  sum_pair_resolve (tl xs)

fun first ( xs : (int * int) list ) =
    if null xs
    then []
    else #1 (hd xs) :: first ( tl xs)


(* things to remember:                                                                                                                                                                                             
   - functions over list are usually recursive, that's the only way to 'get' to all the elements.                                                                                                                  
                                                                                                                                                                                                                   
*)

