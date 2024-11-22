(* La funzione prende in input un numero intero e lo "spezzetta" in una lista di interi (al contrario) *)
let rec digits (n : int) : int list =
  if n = 0 then
    []
  else
    n mod 10 :: digits (n / 10)
;;

let has_one n = 
  if n > 0 then
    List.mem 1 (digits n) (* Questa funzione controlla se è presente all'interno della lista l'elemento specificato *)
  else
    failwith("Errore! Il numero deve essere positivo!")
;;

assert(has_one 10 = true);;
assert(has_one 220 = false);;
assert(has_one 911 = true);;
assert(has_one 451 = true);;
assert(try has_one (-1) |> fun _ -> false with _ -> true);;
(* Codice da pushare! *)