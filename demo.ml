open Lwt
open Cohttp
open Cohttp_lwt_unix

let body1 =
  Client.get (Uri.of_string "https://httpbin.org/get") >>= fun (resp, body) ->
  let code = resp |> Response.status |> Code.code_of_status in
  Printf.printf "Response code: %d\n" code;
  Printf.printf "Headers: %s\n" (resp |> Response.headers |> Header.to_string);
  body |> Cohttp_lwt.Body.to_string >|= fun body ->
  Printf.printf "Body of length: %d\n" (String.length body);
  body

let body2 =
  Client.get (Uri.of_string "https://httpbin.org/get") >>= fun (resp, body) ->
  let code = resp |> Response.status |> Code.code_of_status in
  Printf.printf "Response code: %d\n" code;
  Printf.printf "Headers: %s\n" (resp |> Response.headers |> Header.to_string);
  body |> Cohttp_lwt.Body.to_string >|= fun body ->
  Printf.printf "Body of length: %d\n" (String.length body);
  body

let () =
  let body1 = Lwt_main.run body1 in
  let () = print_endline ("Received body\n" ^ body1) in
  let body2 = Lwt_main.run body2 in
  print_endline ("Received body\n" ^ body2)
  
