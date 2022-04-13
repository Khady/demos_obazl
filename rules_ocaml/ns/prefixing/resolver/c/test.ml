open OUnit2

let test1 _ = assert_equal 255 (Color.Red.r)
let test2 _ = assert_equal 127 (Color.Green.g)
let test3 _ = assert_equal 80  (Color.Blue.b)
let test4 _ = assert_equal  5  (Color.Grue.gr)

let suite =
"suite">:::
  [
    "test1">:: test1;
    "test2">:: test2;
    "test3">:: test3;
    "test4">:: test4;
  ]

let () =
  run_test_tt_main suite
