let powers n =
  match n with 
  | 0 -> 1
  | 1 -> 2
  | n ->
      let pow = n * (n / 2) in  
      pow
