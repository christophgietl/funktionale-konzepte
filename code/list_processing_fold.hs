multiply_two_numbers = (*)
multiply_list_elems = foldl1(multiply_two_numbers)

msg = "Value of multiply_list_elems([3,8,2]): " ++ show(multiply_list_elems([3,8,2])) ++ "."
main = putStrLn(msg)
