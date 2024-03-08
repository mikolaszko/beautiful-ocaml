(* Solution without using index *)
let multiplication_table size =
  List.map (fun mult -> List.init size (fun x -> (x + 1) * mult)) 
  (List.init size (fun x -> x + 1));;

(* my solution *)
let multiplication_table (size : int) : int list list =
  let scaffoldList = List.init size (fun x -> x) in
  List.mapi (fun i _ -> List.init size (fun x -> (i + 1) * (x + 1))) scaffoldList

