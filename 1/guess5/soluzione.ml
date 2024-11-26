let guess5 n =
  if n >= 1 && n <= 5 then
    let r = Random.int(5) + 1 in (n = r, r)
  else
    failwith("Out of bounds!")
;;