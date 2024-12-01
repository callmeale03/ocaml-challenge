let is_natural n = if n >= 0 then true else false;;
let is_even n = n mod 2 = 0;;
let is_prime_or_one n = match n with
  0 -> false
  | 1 -> true
  | _ ->
    let rec check_divisors m = 
      if m = n then true
      else if n mod m = 0 then false
      else check_divisors (m + 1)
    in
      if check_divisors 2 then true else false
    ;;
;;

let f1 x = if is_natural x then 0 else failwith("Undefined");;

let f2 x = 
  if not (is_natural x) then
    failwith("Undefined")
  else
    match x with
      1 | 2 | 3 -> 1
    | _ -> 0
;;

let f3 x = 
  if not (is_natural x) then
    failwith("Undefined")
  else
    if x > 0 && x < 100 then 1 else 0
;;

let f4 x = if not (is_natural x) then failwith("Undefined") else 0;; (* false non è incluso nei valori naturali o meglio non è un numero *)

let f5 x = if not (is_natural x) then failwith("Undefined") else 1;; (* Qualsiasi naturale appartiene a questo insieme *)

let f6 x = 
  if not (is_natural x) then
    failwith("Undefined")
  else
    if is_even x then 1 else 0 (* L'insieme corrisponde ai numeri pari *)
;;

let f7 x = f5 x;; (* Esiste sempre almeno una y = x + x, in quanto y corrisponde al doppio di x *)

let f8 x = if not (is_natural x) then failwith("Undefined") else if x = 0 then 0 else 1;;

let f9 x = f5 x;; (* Esiste sempre almeno una y = x * x, in quanto y è il quadrato di x *)

(* f10 non si capisce l'insieme *)

let f11 x = 
  if not (is_natural x) then
    failwith("Undefined")
  else
    if x < 50 && is_even x then 1 else 0
;;

let f12 z = 
  if not (is_natural z) then
    failwith("Undefined")
  else
    if z = 0 then 0 else f11 z
;;

let f13 z = f5 z;; (* Qualsiasi valori ho per x ed y, se uno dei due è 0, avrò un z che rientra sempre nell'insieme *)

let f14 x = if not (is_natural x) then failwith("Undefined") else if x <= 2 then 1 else 0;;

let f15 x = 
  if not (is_natural x) then
    failwith("Undefined")
  else
    if is_prime_or_one x then 1 else 0 (* L'insieme corrisponde ai numeri naturali primi *)
;;