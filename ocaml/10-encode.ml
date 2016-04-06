let encode lst =
  let first = function
    | hd :: _ -> hd
    | []      -> raise Not_found
  in let rec aux acc elem nb = function
    | []       -> List.rev ((nb , elem) :: acc)
    | hd :: tl ->
        if hd = elem
        then aux acc elem (nb + 1) tl
        else aux ((nb, elem) :: acc) hd 1 tl
  in aux [] (first lst) 1 lst
