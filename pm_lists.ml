let empty lst = 
  match lst with
  | [] -> true
  | h :: t -> false

let empty lst = 
  match lst with
  | [] -> true
  | _ :: _ -> false

let empty lst = 
  match lst with
  | [] -> true
  | _ -> false

let rec sum lst =
  match lst with
  | [] -> 0
  | h :: t -> h + sum t

let rec length lst = 
  match lst with
  | [] -> 0
  | h :: t -> 1 + length t


(*
  manual version of @ operator in the stdlib
  example usage :
  append [1;2;3] [4;5;6] is [1;2;3;4;5;6]
*)
let rec append lst1 lst2 = 
  match lst1 with 
  | [] -> lst2
  | h :: t -> h :: append t lst2
