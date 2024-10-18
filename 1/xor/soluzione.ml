let xor x y = x && (not y) || (not x) && y;; (* Con uso dei connettivi logici *)

let xor1 x y = if x <> y then true else false;; (* Con uso di espressioni condizionali *)

(* Con uso del pattern matching *)
let xor2 x y = match x, y with
  | x', y' when x' <> y' -> true
  | _ -> false
;;