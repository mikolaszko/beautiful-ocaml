(* mysolution matches the best practice*)
let remove int_list value_list: int list =
  List.filter (fun x -> not (List.mem x value_list)) int_list
