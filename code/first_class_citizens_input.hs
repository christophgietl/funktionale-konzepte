multiply_by_2(x) = x * 2    -- first-order function
apply_to_five(f) = f(5)     -- higher-order function, takes a function as its input

msg = "Value of apply_to_five(multiply_by_2): " ++ show(apply_to_five(multiply_by_2)) ++ "."
main = putStrLn(msg)
