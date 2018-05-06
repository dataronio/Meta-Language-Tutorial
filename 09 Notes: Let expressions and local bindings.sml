(* this chapter is about local bindings. That is using the 'let' expression                                                                                                                                        
   creating bindings just until the scope of a function.                                                                                                                                                           
                                                                                                                                                                                                                   
                                                                                                                                                                                                                   
    Syntax:                                                                                                                                                                                                        
    let b1 b2 ... bn in e end                                                                                                                                                                                      
                                                                                                                                                                                                                   
    - each bi is any binding, and e is any expression                                                                                                                                                              
                                                                                                                                                                                                                   
    - type checking: type check each bi and e in a static environment that includes the previous bindigs.                                                                                                          
      the type of the whole let-expression is the type of e                                                                                                                                                        
                                                                                                                                                                                                                   
    - evaluation:evaluate each bi and e in the dynamic environment  that includes the previous bindings.                                                                                                           
      the result of the whole let-expression is the result of evaluation of e                                                                                                                                      
                                                                                                                                                                                                                   
                                                                                                                                                                                                                   
 *)

fun random1 ( z : int ) =
    let
        val x = if z > 0 then z else 34
        val y = x + z + 9
    in
        if x > y then x * 2 else y * y
    end

fun random2 () =
    let
        val x = 1
    in
        (let val x = 2 in x+1 end) + (let val y = x+2 in y+1 end)
    end
        (*shadowing here ^ *)









