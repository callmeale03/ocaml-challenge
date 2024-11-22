(* La funzione controlla il range di valori fornito *)
let rec range (a : int) (b : int) : int list = 
  if a > b then [] 
  else a :: range (a + 1) b
;;

(* La funzione prende come input una lista e ne esegue la somma di tutti i valori contenuti al suo interno *)
let rec sum (l : int list) : int =
  match l with
  [] -> 0
  | x :: xs -> x + sum xs
;;

let rec sumrange a b = 
   range a b |> List.fold_left ( + ) 0
;;

assert (sumrange 0 1 = 1);;
assert (sumrange 1 3 = 6);;
assert (sumrange 3 2 = 0);;

(* Come lavora il fold_left: a + (a + 1) + (a + 2) + ... + b *)