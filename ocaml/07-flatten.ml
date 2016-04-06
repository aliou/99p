(* Flatten a nested list structure. *)

let rec flatten = function
  | hd :: tl -> List.append hd (flatten tl)
  | []       -> []
