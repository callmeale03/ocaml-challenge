type season = Spring | Summer | Autumn | Winter

let squirrel_play (t : int) (s : season) = 
  match s with
  | Summer -> if t < 15 || t > 35 then false else true
  | _ -> if t < 15 || t > 30 then false else true
;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;