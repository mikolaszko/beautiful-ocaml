let x = 
  match not true with 
  | true -> "nope" 
  | false -> "yey"

let y =
  match 42 with
  | foo -> foo

let z =
  match "foo" with
  | "bar" -> 0
  | _ -> 1

let a = 
  match [] with
  | [] -> "empty"
  | _ -> "not empty"

let b =
  match ["taylor"; "swift"] with 
  | [] -> ["folklore"]
  | h :: t -> t

let fst3 t =
  match t with 
  | (a,b,c) -> a
