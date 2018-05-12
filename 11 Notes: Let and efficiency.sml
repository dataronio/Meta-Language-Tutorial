                                                                                                         
(* return the max element in list *)                                                                     
                                                                                                         
fun max_ele ( xs : int list) =                                                                           
    if null xs                                                                                           
    then 0                                                                                               
    else if null (tl xs)                                                                                 
    then hd xs                                                                                           
    else if hd xs > max_ele (tl xs)                                                                      
    then hd xs                                                                                           
    else max_ele (tl xs)                                                                                 
                                                                                                         
(* this above is a HORRIBLE algorithm *)                                                                 
                                                                                                         
(* when the bigger numners are at the end of the list.                                                   
   we end up computing  max_ele (tl xs) EXPONENTIALly many times                                         
   because max_ele gets called both times in the method.                                                 
   And then each of those threads end up creating two more threads.                                      
   The time complexity is EXPONENTIAL *)                                                                 
                                                                                                         
                                                                                                         
(* we should reaally avoid such computations.                                                            
                                                                                                         
   by doing these computations and then storing them in some variable *)                                 
                                                                                                         
                                                                                                         
fun max_ele_2 ( xs : int list) =                                                                         
    if null xs                                                                                           
    then 0                                                                                               
    else if null (tl xs)                                                                                 
    then hd xs                                                                                           
    else                                                                                                 
        let val  x = max_ele_2 (tl xs)                                                                   
        in                                                                                               
            if hd xs > x                                                                                 
            then hd xs                                                                                   
            else x                                                                                       
        end                                                                                              
                                                                                                         
(* do not do repeated computations *)                                                                    




