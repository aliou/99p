(* Find the K'th element of a list. *)
(* The first element in the list is number 1. *)

let element_at lst nb =
  if nb < 1 then raise (Invalid_argument "nth")
  else let rec aux n = function
    | hd :: tl -> if n = 0 then hd else aux (n - 1) tl
    | []       -> raise Not_found
  in aux (nb - 1) lst
