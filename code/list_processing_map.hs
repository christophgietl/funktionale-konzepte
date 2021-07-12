multiply_by_2(x) = x*2
mult_list_elems_by_2 = map(multiply_by_2)

msg = "Value of mult_list_elems_by_2([1,2,3]): " ++ show(mult_list_elems_by_2([1,2,3])) ++ "."
main = putStrLn(msg)
