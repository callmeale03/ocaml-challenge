let ( <|> ) x y = match x, y with
    None, None -> None
    | Some x, _ -> Some x
    | None, Some y -> Some y
;;

assert (None <|> Some false = Some false);;
assert (Some true <|> None <|> Some false = Some true);;
assert (Some 3 <|> None = Some 3);;
assert (Some "cat" <|> Some "dog" = Some "cat");;
assert (None <|> None <|> Some "dog" <|> None = Some "dog");;