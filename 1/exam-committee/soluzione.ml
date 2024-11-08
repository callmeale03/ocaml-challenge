type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam v1 v2 v3 = 
  match v1 with
  | StrongReject -> false (* Condizione in cui il voto sia subito un "forte rifiuto" *)
  | WeakReject -> 
    (* Condizioni in cui il rifiuto non è grave *)
    if v2 = WeakAccept || v2 = StrongAccept then (* Se il secondo voto non è un rifiuto grave, si controlla se il terzo sia un rifiuto o meno *)
      if v3 = WeakAccept || v3 = StrongAccept then true else false
    else false
  (* In tutti gli altri casi si controlla se il rifiuto è grave, uniche condizioni in questi casi per poter bocciare il candidato *)
  | _ -> match v2, v3 with
    | StrongReject,_ -> false
    | _,StrongReject -> false
    | WeakReject, WeakReject -> false
    | _ -> true
;;