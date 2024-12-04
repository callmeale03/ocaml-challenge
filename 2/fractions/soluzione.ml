let is_posfrac (a,b) = match (a,b) with
  a', 0 -> failwith("Non è una frazione!")
  | a', b' when (a >= 0 && b > 0) || (a < 0 && b < 0) -> true
  | _ -> false
;;

(* Per determinare se una frazione è più grande dell'altra si usa la moltiplicazione incrociata *)
let check_greater_than (a,b) (c,d) =
  if a * d = b * c then 0 
  else if a * d > b * c then 1 
  else -1
;;

let compare_posfrac (a,b) (c,d) =
  if not (is_posfrac (a,b) && is_posfrac (c,d))
    then
      failwith("Le due frazioni non sono entrambe positive!")
  else
      check_greater_than (a,b) (c,d)
;;

assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;

let compare_frac (a,b) (c,d) =
  if is_posfrac (a,b) && not (is_posfrac (c,d)) then 1
  else if not (is_posfrac (a,b)) && is_posfrac (c,d) then -1
  else check_greater_than (a,b) (c,d)
;;