let () = print_endline "Hello, G!"
let y = Gsystem.Hello.world;;

print_endline y;;
print_endline (string_of_int Lit.Sublib.x)

(* dune exec g *)
