type blood_group = A | B | AB | O

let check_groups x y = match x, y with
  AB, AB -> true
  | A, y' when y' <> O && y' <> B -> true
  | B, y' when y' <> O && y' <> A -> true
  | O, _ -> true
  | _ -> false
;;

assert (check_groups O AB = true);;
assert (check_groups A B = false);;
assert (check_groups AB AB = true);;