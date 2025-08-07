let x = 100

(** Returns the args from the array returned by Sys.argv. Requires argv is the
    returned value of Sys.argv *)
let args_of_argv (argv : string array) : string list =
  match argv |> Array.to_list with
  | _program_name :: args -> args
  | [] -> raise (Failure "Impossible")

(** Applies handle_line on each line from in_channel until end of file. *)
let do_each_line (in_channel : in_channel) (handle_line : string -> unit) : unit
    =
  try
    while true do
      let line = input_line in_channel in
      handle_line line
    done
  with End_of_file -> close_in in_channel
