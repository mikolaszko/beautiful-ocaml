let rec fac x = 
  if x <= 1 then 1 else x * fac (x-1);;


let ( *** ) x = fac x;; 

let y = ( *** ) 5;;

print_int(y);;