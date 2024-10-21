let parrot_trouble (talk : bool) (time : int) = 
  if time < 0 || time > 23 then None else (* Viene controllato se il tempo inserito è un valore reale *)
  (* Il pattern matching verifica se il pappagallo parla o meno durante un orario proibito *)
  match talk with
  | true -> if time < 7 || time > 20 then Some true else Some false
  | false -> Some false
;;