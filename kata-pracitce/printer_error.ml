(*probably fastest *)

let printer_error (s: string) : string =
  let count = ref 0 in
  String.iter (fun c ->
    if Char.code c > 109 then
      incr count
  ) s;

  (* After the iteration, use Printf.sprintf to construct the output string in the format "count/total_length" using the value of count and the length of s (obtained using String.length). *)
  Printf.sprintf "%d/%d" !count (String.length s)

(* with regex but its not stdlib*)
let printer_error(s: string): string =
  let rgx = Str.regexp "[a-m]" in
  let b = String.length s in
  let a = String.length(Str.global_replace rgx "" s) in
    Printf.sprintf "%d/%d"  a b;;

(* mysolution without regex *)
let printer_error s: string = 
  let lengthSToString = Int.to_string (String.length s) in 
  let errorCount = ref 0 in
  let errorCharsToString = "noprstuwqxyz" in
  String.iter (fun char -> 
    match String.contains errorCharsToString char with
    | true -> errorCount := !errorCount + 1
    | false -> ()
  ) s;
  Int.to_string !errorCount ^ "/" ^ lengthSToString
