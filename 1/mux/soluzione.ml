let mux2 s0 (a : bool) (b : bool) = if s0 then a else b;;

let mux4 (s1 : bool) (s0 : bool) (a0 : bool) (a1 : bool) (a2 : bool) (a3 : bool) = match s1 with
    | false -> mux2 s0 a1 a0
    | true -> mux2 s0 a3 a2
;;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;