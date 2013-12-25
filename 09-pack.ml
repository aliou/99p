let pack lst =
  let first = function
    | hd :: _ -> hd
    | []      -> raise Not_found
  in let rec aux subl cur = function
    | []       -> List.rev (cur :: subl)
    | hd :: tl ->
        if hd = (first cur)
        then aux subl (hd :: cur) tl
        else aux (cur :: subl) (hd :: []) tl
  in let (fst :: rst) = lst
  in aux [] (fst :: []) rst
