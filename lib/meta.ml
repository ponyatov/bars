let app = Sys.getcwd () |> String.split_on_char '/' |> List.rev |> List.hd
let title = "Bare Metal Rust workout"
let about = "\
- learn Rust by source code rewriting
- bare metal target (QEMU)
  - i386
"

(* *)
let user = "dponyatov"
let devuser = user
let devserver = "10.110.1.110"

(* *)
let author = "Dmitry Ponyatov"
let email = "dponyatov@gmail.com"
let year = 2026
let version = "0.0.1"
let license = "MIT"
let github = [%string "https://github.com/ponyatov/%{app}"]
let gitflic = [%string "https://gitflic.ru/project/%{user}/%{app}"]
