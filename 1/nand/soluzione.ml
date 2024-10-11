let nand x y = not(x && y);; (* Funzione del NAND con uso dei connettivi logici NOT e OR *)

let nand1 x y = if x && y = true then false else true;; (* Funzione NAND con uso di espressioni condizionali*)

(* Funzione NAND con uso del pattern matching *)
let nand2 x y = match x, y with
  | true, true -> false
  | _ -> true;;