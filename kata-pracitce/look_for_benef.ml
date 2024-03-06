(* grog suck at math *)
let new_avg (xs: float list) (navg: float): int option =
  let newAccList = List.map (fun x -> navg -. x) xs in
  let avg = List.fold_left ( +. ) 0.0 xs /. Int.to_float ( List.length xs ) in
  match avg >= navg with 
  | false  -> (
    let neededDon = List.fold_left ( +. ) 0. newAccList +. navg in
    match xs with 
    | [] -> Option.some (Float.to_int navg)
    | _ -> Option.some (Float.to_int (Float.ceil neededDon))
  )
  | true -> None
