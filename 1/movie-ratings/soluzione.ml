(* Funzione che controlla se il valore è compreso nell'intervallo richiesto *)
let check_out_of_bounds x =
  if x < 1 || x > 5 then failwith("Rating out of bounds!")
;;

let movie_rating a b c =
  (* Controllo dei tre valori che rispettano le condizioni richieste *)
  check_out_of_bounds a;
  check_out_of_bounds b;
  check_out_of_bounds c;

  (* Controllo fra i vari casi possibili che possono verificarsi *)
  match a, b, c with
  | 5, 5, 5 -> "Masterpiece"
  | a, 5, 5 | 5, a, 5 | 5, 5, a when a >= 4 -> "Higly Recommended"
  | a, b, c when a >= 4 && b >= 4 && c >= 3 -> "Recommended"  
  | a, c, b when a >= 4 && b >= 4 && c >= 3 -> "Recommended"
  | b, a, c when a >= 4 && b >= 4 && c >= 3 -> "Recommended"
  | b, c, a when a >= 4 && b >= 4 && c >= 3 -> "Recommended"
  | c, a, b when a >= 4 && b >= 4 && c >= 3 -> "Recommended"
  | c, b, a when a >= 4 && b >= 4 && c >= 3 -> "Recommended"
  | _ -> "Mixed Reviews"
;;