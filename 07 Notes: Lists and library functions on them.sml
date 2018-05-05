
(* tuples are one way to build compound data
   we stil have to pick that size while writing the program

   Lists don't have that restriction. Can be built with any number of elements
   all list elements have the same type


   how to build lists and access the elements:

 *)


[];  (* empty list *)



[3,4,5];  (* an int list *)


[(1+2), 3+4, 7] ; (*will evaluate *)

[true, false, false];



val x = [7,8,9]

(* accessing lists *)




(* 

null e  evaluates to 'true' iff e  is []

if  e evaluates to [v1,v2...vn], then hd e  evaluates to v1
   
if e evaluates to [v1,v2...vn], then tl e evaluates to [v2...vn]

an exception is raised if e evaluates to []

*)

(* the null used above is not like the null in C++/java
   it is a function that takes a list and returns true if its empty *)

val x = [1,2,3];
hd x;
tl x;

tl [1]; (* is the empty list*)


(* the type t list describes lists where all elements have type t

examples:

int list, bool list, (int * int) list  ( int list  * int ) list *)

[];


(*  [] has the type 'a list   pronounced type  alpha list.
 
    we can cons anything on the empty list


    the cons operator works for any list  in e1::e2 
         e2 has to have type ' t list' and e1 has type t *) 



