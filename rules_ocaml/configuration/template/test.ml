open OUnit2 ;;

let test1 _ = assert_equal ~printer:string_of_bool false (Config.colorize);;
let test2 _ = assert_equal ~printer:string_of_int 0 (Config.red);;
let test3 _ = assert_equal ~printer:string_of_int 0 (Config.green);;
let test4 _ = assert_equal ~printer:string_of_int 0 (Config.blue);;

let suite =
"suite">:::
["test1">:: test1;
 "test2">:: test2;
 "test3">:: test3;
 "test4">:: test4]
;;

let () =
  run_test_tt_main suite
;;
