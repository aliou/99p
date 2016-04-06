let compress lst =
  let first = function
    | hd :: tl -> hd
    | [] -> raise Not_found
  in let rec aux acc = function
    | []       -> List.rev acc
    | hd :: tl ->
        if hd = (first acc)
        then aux acc tl
        else aux (hd :: acc) tl
  in aux ((first lst) :: []) lst
