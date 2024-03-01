let bigLetters = [|"A";"B";"C";"D";"E";"F"; "G"; "H"; "I"; "J"; "K"; "L"; "M"; "N"; "O"; "P"; "R"; "S"; "T"; "U"; "W"; "X"; "Y"; "Z"; " "|]

(* my solution - not very good*)
let is_uppercase (s: string): bool =
  let seqOfString = String.to_seq s in
  Seq.for_all (fun x -> Array.mem (String.make 1 x) bigLetters ) seqOfString;;

(* and this is genius *)
let is_uppercase (s: string): bool =
  String.uppercase_ascii s = s
