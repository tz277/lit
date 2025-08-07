(* dune exec lit abc def *)

let command_of_args (args : string list) : string =
  "git " ^ String.concat " " args

let main () : unit =
  let args = Sys.argv |> Lit.System.args_of_argv in

  let command = args |> command_of_args in

  let in_channel = Unix.open_process_in command in

  Lit.System.do_each_line in_channel print_endline

let () = main ()
