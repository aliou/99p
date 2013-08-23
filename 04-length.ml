(* Find the number of elements of a list. *)

let rec length = function
  | hd :: tl -> 1 + length tl
  | []       -> 0
