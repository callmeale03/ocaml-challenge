let max x y =
  if x > y then x else y
;;

let min x y =
  if x < y then x else y
;;

let minmax3 a b c = 
  (min (min a b) c, max (max a b) c)
;;