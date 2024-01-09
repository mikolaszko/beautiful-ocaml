type 'a gen_list =
  | Nil
  | Cons of 'a * 'a gen_list

let rec length = function
  | Nil -> 0
  | Cons (_, t) -> 1 + length t

(* stdlib impl of lists *)
type 'a stdlib_list=
  | []
  | (::) of 'a * 'a stdlib_list

let rec length = function
  | [] -> 0
  | _ :: t -> 1 + length t
