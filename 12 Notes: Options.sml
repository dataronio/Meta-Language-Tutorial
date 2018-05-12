
(* "options" *)


(* analogy with lists:


   just like we write 'int list' [t list] we can write 't option'

     options are not lists
   
    Building OPTIONS:
    -> NONE has type 'a option'  [ like [] has 'a list'  ]
    -> SOME e has type 't option' if e has type t   (* much like e::[]] *)    
    

    ACCESSING OPTIONS:
    -> isSome  has type 'a option -> bool'
    -> valOf has type a oprion -> 'a   [ exception if given NONE]


 *)


(*revisiting max element of list from previous chapter *)

(* these return an 'int option' instead of int *)


fun max1 (xs : int list) =
    if null xs
    then NONE
    else
	let val tl_ans = max1 (tl xs)
	in if isSome tl_ans andalso valOf tl_ans > hd xs
	   then tl_ans
	   else SOME (hd xs)
	end



fun max2 ( xs : int list) =
    if null xs
    then NONE
    else let  (* now it's okay to assume that the parameters are gonna be non-empty *)
	(* int list -> int *)
	fun max_ne ( xs : int list ) =
	    if null (tl xs)
	    then hd xs
	    else let val tl_ans = max_ne (tl xs)
		 in
		     if hd xs > tl_ans
		     then hd xs
		     else tl_ans
		 end
    in
	SOME (max_ne xs)
    end

	     

(* both are fine. 

  Options can have either ZERO or ONE elements *)
	     










	    
