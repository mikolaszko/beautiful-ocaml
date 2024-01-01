let rec fac x = 
  if x <= 1 then 1 else x * fac (x-1);;

print_int(fac 5);
print_newline();