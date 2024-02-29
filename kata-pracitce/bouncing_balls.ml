(* mysolution *)
let rec solution (h: float) (bounce: float) (window: float) (acc: int) = 
  match h <= window with
  | true -> acc - 1
  | false -> solution (h *. bounce) bounce window acc + 2
  
  

let bouncingBall (h: float) (bounce: float) (window: float): int =
  if bounce > 0.0 || bounce < 1.0 && window < h && h > 0.0 then
    solution h bounce window 0
  else -1;;


print_int (bouncingBall 30.0 0.66 1.5);
print_int (bouncingBall 2.0 0.5 1.0);
