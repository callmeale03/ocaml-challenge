let best_offer (a : int option) (b : int option) (c : int option) = match a, b, c with
  None, None, None -> None
  | _ -> 
  if a > b then
    if a > c then a else c
  else if b > c then b else c;;