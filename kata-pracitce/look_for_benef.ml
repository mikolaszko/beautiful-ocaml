let new_avg (xs: float list) (navg: float): int option =
  let help_counter =
    let newDonListLen = List.length xs + 1 in
    let summed = List.fold_left ( +. ) 0.0 xs in
    print_float summed;
    Option.some (Float.to_int summed);
  in
    
  match xs with 
  | [] -> Option.some 5
  | _ ->
    match navg <= 0.0 with
    | true -> None
    | false -> help_counter
