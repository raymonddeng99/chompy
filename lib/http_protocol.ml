open Lwt
open Cohttp
open Cohttp_lwt_unix

module Http_protocol = struct
	let fetch url = 
		Client.get (Uri.of_string url) >>= fun (resp, body) ->
		(* let code = resp |> Response.status |> Code.code_of_status; *)
		(* let header = (resp |> Response.headers |> Header.to_string); *)
		body |> Cohttp_lwt.Body.to_string >|= fun body ->
		body
end