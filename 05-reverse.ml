(* Reverse a list. *)

let reverse lst =
  let rec aux acc = function
    | hd :: tl -> aux ( hd :: acc ) tl
    | []       -> acc
  in aux [] lst
