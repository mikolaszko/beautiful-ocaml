(* more concise and probably faster *)
let comp a b: bool =
  List.sort compare (List.map (fun x -> x * x) a ) = List.sort compare b 

(* my solution *)
let comp (a : int list) (b : int list ) : bool =
  let sortedA = List.fast_sort (fun a b ->  compare a b) a in
  let sortedB = List.fast_sort (fun a b -> compare a b) b in
  List.equal(fun a b -> a * a == b ) sortedA sortedB
