(* Find the last box of a list. *)

let rec my_last = function
  | h :: [] -> h
  | h :: tl -> my_last tl
