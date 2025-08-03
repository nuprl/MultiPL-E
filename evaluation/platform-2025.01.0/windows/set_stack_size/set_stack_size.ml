(* See https://discuss.ocaml.org/t/how-to-set-the-stacksize-for-ocamlopt-opt-exe-on-mingw-cygwin-host/15279 *)

(* Modify the stack size of the resulting PE executable.

  See https://learn.microsoft.com/en-us/windows/win32/debug/pe-format for a
  description of the PE format. *)

let perform ~__FUNCTION__ f fd ofs len buf =
  if Bytes.length buf < len then invalid_arg __FUNCTION__;
  let _ = Unix.lseek fd ofs SEEK_SET in
  let rec loop ofs len =
    if len <= 0 then ()
    else begin
      let n = f fd buf ofs len in
      if n = 0 then raise End_of_file;
      loop (ofs + n) (len - n)
    end
  in
  loop 0 len

let really_read = perform ~__FUNCTION__ Unix.read
let really_write = perform ~__FUNCTION__ Unix.write

let read_bytes fd ofs len =
  let buf = Bytes.create len in
  really_read fd ofs len buf;
  Bytes.unsafe_to_string buf

let read_int f len fd ofs =
  f (read_bytes fd ofs len) 0

let read_int32 = read_int String.get_int32_le 4
let read_int16 = read_int String.get_int16_le 2

let write_int f len =
  let buf = Bytes.create len in
  fun fd ofs n ->
    f buf 0 n;
    really_write fd ofs len buf

let write_int64 = write_int Bytes.set_int64_le 8

let set_stack_size out n =
  assert (Sys.word_size = 64);
  let fd = Unix.openfile out [O_RDWR; O_SHARE_DELETE] 0o755 in
  let base = Option.get (Int32.unsigned_to_int (read_int32 fd 0x3c)) in
  let sign = read_bytes fd base 4 in
  if sign <> "PE\000\000" then Printf.ksprintf failwith "Invalid PE Signature: %S" sign;
  let base = base + 24 in
  let sign = read_int16 fd base in
  if sign <> 0x20b then Printf.ksprintf failwith "Invalid PE Optional Header Signature: 0x%x" sign;
  write_int64 fd (base + 72) n

let _ = set_stack_size (Sys.argv.(1)) (Int64.of_string Sys.argv.(2))
;;
