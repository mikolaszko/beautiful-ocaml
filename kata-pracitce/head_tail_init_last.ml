let head lst =
  match lst with
  | [] -> failwith "Empty array was given"
  | h :: t -> h

let tail lst =
  match lst with
  | [] -> failwith "Empty array was given"
  | h :: t -> t

let rec last lst =
  match lst with 
  | [] -> failwith "Empty array was given"
  | [x] -> x
  | h :: t -> last t

let rec init lst =
  let revLst = List.rev lst in
  List.tl revLst
