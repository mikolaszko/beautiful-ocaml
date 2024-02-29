(* Given a non-empty array of integers, return the result of multiplying 
   the values together in order*)
(* best solution *)
let grow (xs: int list): int = 
  List.fold_left ( * ) 1 xs

(* my solution *)

let rec grow (xs: int list): int =
  match xs with 
  | [] -> 1
  | [x] -> x
  | h :: t -> h * grow t;;


1.0 *. 4.0

