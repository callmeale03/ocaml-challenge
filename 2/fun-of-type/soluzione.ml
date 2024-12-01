let f1 x = if x mod 7 = 0 then true else false;;

let f2 b = if b then 1 else 0;;

let f3 x = if x > 10 then (x + 1, true) else (x - 1, false);;

let f4 (x, y) = match (x, y) with
  x, true -> x + 1
  | _ -> x - 1
;;

let f5 x = fun y -> x + y * 2;;

let f6 x = fun y -> if x + y > x * 2 then true else false;;

let f7 b = fun x -> if b then x mod 2 = 0 else x * 5 > 30 ;;

let f8 b = fun b' -> if b && b' then 69 else 96;;

let f9 b = fun x -> if not b then x mod 30 else x mod 15;;

let f10 f = let x = 3 in f x * 2;;

let f11 p = let x = 4 in
  if p x then x / 2 else x * 2
;;

let f12 f =
  let b = f true in
  let b' = f false in
  b + b'
;;

let f13 f = let x = 3 in
  if f x then
    not (f x)
  else
    f x
;;

let f14 f = let b = true in
  if f (not b) then 100 else 0
;;

let f15 n (x,y) = n * x + n / y mod 30;;

let f16 x = fun y -> fun z -> x + y / z;;

let f17 (f : int -> int) = fun x -> f (x + 1);;

let f18 f = let g x = x + 1 in f g + 1;;

let f19 f = fun b -> if b then f 5 > 30 else f (-5) < (-30);;

let f20 f = fun b -> if not b
  then
    if f 0 then 1 else 0
  else
    failwith("Error")
  ;;
;;