(*mine which is in the best practice/readable range *)
let nb_year (p0: int) (percent: float) (aug: int) (p: int): int =
  let rec helper_acc newPop years = 
    let newPopulation = Float.to_int ( 
      Int.to_float newPop +.  
      Int.to_float newPop *. (percent *. 0.01 ) +. 
      Int.to_float aug) in 
    match p <= newPopulation with
    | true -> years
    | false -> 
        helper_acc newPopulation (years + 1)
  in
helper_acc p0 0

(* and this one is clever but less readble imho *)
let rec nb_year (p0: int) (percent: float) (aug: int) (p: int) =
  if (p0 >= p) then 0
  else
    (nb_year (int_of_float(float_of_int(p0) +. float_of_int(p0) /. 100.0 *. percent +. float_of_int(aug))) percent aug p) + 1;;
