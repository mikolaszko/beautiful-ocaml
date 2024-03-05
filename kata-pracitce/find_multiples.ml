(* this is mine solution which also happens to be #1 solution on CodeWars *)
let find_multiples (integer: int) (limit: int): int list =
  List.init (limit / integer)(fun x -> (x + 1) * integer)
