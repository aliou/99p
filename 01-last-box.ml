(*Find the last box of a list. *)
(*Example: *)
(* my_last ['a'; 'b'; 'c'; 'd']*)
(*  =>  'd'*)

let rec my_last = function
  | h :: [] -> h
  | h :: tl -> my_last tl
