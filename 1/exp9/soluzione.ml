let square x = x * x;;

let exp9 x = square (square (square x)) * x;;
(* In questa soluzione l'operazione di moltiplicazione viene usata 4 volte *)