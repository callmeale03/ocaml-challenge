type suit = S | H | D | C;;
type card = Card of int * suit;;

let random_suit () = match Random.int 4 with
  0 -> S
  | 1 -> H
  | 2 -> D
  | _ -> C
;;

let draw_card () =
  let value = Random.int 13 + 1 in
  let suit = random_suit() in
  Card (value, suit)
;;

let rndHand () : card * card * card * card * card =
  (draw_card(), draw_card(), draw_card(), draw_card(), draw_card())
;;

let hand = rndHand()

(* Funzione per contare gli elementi uguali in una lista *)
let count_occurrences lst elem =
  List.fold_left (fun acc x -> if x = elem then acc + 1 else acc) 0 lst

let poker (c1, c2, c3, c4, c5) =
  let cards = [c1; c2; c3; c4; c5] in
  let values = List.map (fun (Card (value, _)) -> value) cards in
  List.exists (fun value -> count_occurrences values value = 4) values
;;