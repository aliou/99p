(* Find the last but one element of a list. *)

let rec my_but_last_one = function
  | h :: tl :: [] -> h
  | h :: tl       -> my_but_last_one tl
  | []            -> raise Not_found
