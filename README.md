# ocaml-https-demo

Simple OCaml program that do a GET request to a https website

# Usage

```
git git@github.com:whoek/ocaml-https-demo.git
cd ocaml-https-demo

opam install dune cohttp-lwt-unix tls-lwt
dune build
dune exec ./demo.exe
```
You should see something like this
```
Response code: 200
Headers: Date: Sat, 22 Apr 2023 08:33:19 GMT
Content-Type: application/json
Content-Length: 239
Connection: keep-alive
Server: gunicorn/19.9.0
Access-Control-Allow-Origin: *
Access-Control-Allow-Credentials: true


Body of length: 239
Received body
{
  "args": {}, 
  "headers": {
    "Host": "httpbin.org", 
    "User-Agent": "ocaml-cohttp/5.1.0", 
    "X-Amzn-Trace-Id": "Root=1-64439bfc-542cc80716d658c25e7de3b6"
  }, 
  "origin": "xxx.xxx.xxx.xxx", 
  "url": "https://httpbin.org/get"
}
```
