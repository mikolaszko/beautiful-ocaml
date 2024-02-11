(* static checking for pattern matching *)

let bad_empty lst =
  match lst with
  | [] -> true

  (* [] is a value in it of itself so 1st branch will always match*)
let rec bad_sum lst =
  match lst with
  | h :: t -> h + bad_sum t
  | [x] -> x
  | [] -> 0

 (* dies when [], no static checking here because pattern matching is not used here *)
let rec bad_sum' lst =
  List.hd lst + bad_sum' (List.tl lst)
