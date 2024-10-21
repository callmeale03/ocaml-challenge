type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

(* La funzione prende in ingresso un giorno della settimana e un corso e ti dice
  se quel corso è presente in quel giorno (true) o non c'è (false) *)
let isLecture d c = match d with
| Mo -> false
| Tu -> if c = ALF then true else false
| We -> if c = LIP then true else false
| Th -> true
| Fr -> if c = ALF then true else false
;;