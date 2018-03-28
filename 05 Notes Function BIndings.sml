
(* function bindings *)

(* a function is a value
   the function is added to the environment so later expressions can call it.
   
  the body of a function is type-cheked, and the following are included in the static enviornment 
  - the enclosing or earlier static bindings
  - the arguments to the function and their types,  THEY ARE ADDED IN THE STATIC ENV ONLY FOR THE BODY OF THE FUNCTION, NOT FOR LATER
  - the function  func x0 : ( t1 * t2 * ... * tn)  -> t, for recursion *)


(* in SML functions can't take variable number of arguments 
   
   after syntax check for a function call, we have typechecking 
   example, a function call  e0 ( e1,.., en), e0 has to have the type (t1 * ..  * tn) -> t
   

   
   While evalutating: look up the function in the dynamic environment. 
   Expand the function call to a function. (this had already type-checked from before)
   Evaluate the expression using the arguments
   
   'The result is evaluation of the expression in the dynamic environment, extended to map the 
    values being passed to the  the variables of the function *) 
