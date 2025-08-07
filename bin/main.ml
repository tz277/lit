(* dune exec lit abc def *)
let () =
  let args =
    match Sys.argv |> Array.to_list with
    | _program_name :: args -> args
    | [] -> raise (Failure "Impossible")
  in

  let inner : string =
    List.fold_left
      (fun acc elt -> if acc = "" then elt else acc ^ ", " ^ elt)
      "" args
  in

  print_endline ("[" ^ inner ^ "]");
  print_endline (string_of_int Lit.System.x)
