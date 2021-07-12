is_even(x) = (x `mod` 2 == 0)
keep_even_numbers = filter(is_even)

msg = "Value of keep_even_numbers([1,2,3,4,5]): " ++ show(keep_even_numbers([1,2,3,4,5])) ++ "."
main = putStrLn(msg)
