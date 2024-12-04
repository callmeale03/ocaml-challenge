let tris (a,b,c,d) =
  if a = b && a = c || a = b && a = d || a = c && a = d || b = c && c = d
    then true
  else false
;;

let hand () = (Random.int(10) + 1, Random.int(10) + 1, Random.int(10) + 1, Random.int(10) + 1);;

tris(hand());; (* Test della funzione *)