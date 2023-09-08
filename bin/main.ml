open Chompy.Http_protocol

let main () = 
	let example_url = "https://en.wikipedia.org/wiki/Monty_Python_and_the_Holy_Grail" in
	let html_response = Http_protocol.fetch example_url |> Lwt_main.run in
	(* let document = Http_protocol.parse_html_response html_response in *)
	print_endline html_response

let () = main ()