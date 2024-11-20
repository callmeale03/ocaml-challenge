(* Funzione eseguita senza l'ausilio del costrutto if-then-else *)
let is_even x = match x mod 2 with
  0 -> true
  | _ -> false;;

(* La funzione calcola se il valore passato per input rientri nell'intervallo richiesto *)
let check_bounds x =
  if x < 1 || x > 5 then 0 else 1

let win a b =
  match check_bounds a, check_bounds b with
  0, 0 -> 0
  | 1, 0 -> 1
  | 1, 1 when is_even (a + b) -> 1
  | _ -> -1;;