open Chompy.Http_protocol
open Soup

let main () = 
	let example_url = "https://en.wikipedia.org/wiki/Monty_Python_and_the_Holy_Grail" in
	let html_response = Http_protocol.fetch example_url |> Lwt_main.run in
	parse html_response $$ "a[href]" 
		|> iter (fun a -> print_endline (R.attribute "href" a ))

let () = main ()