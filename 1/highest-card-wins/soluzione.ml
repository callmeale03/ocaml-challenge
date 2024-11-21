type card = Joker | Val of int;;

let win player dealer = match player, dealer with
    _, Joker -> false               (* Caso in cui il dealer ottiene Joker *)
    | Joker, Val dealer -> true     (* Caso dove il giocatore ha il Joker e non il dealer *)
    | Val p, Val d -> p > d;;       (* Caso dove nessuno ha il Joker; vince chi ha la carta più alta *)