-- The higher-order function define_multiply_by_function
-- returns a first-order function as its output:
define_multiply_by_function(multiplier) = (\x -> x * multiplier)

multiply_by_2 = define_multiply_by_function(2)  -- first-order function
multiply_by_3 = define_multiply_by_function(3)  -- first-order function
message_2 = "Value of multiply_by_2(5): " ++ show(multiply_by_2(5)) ++ ".\n"
message_3 = "Value of multiply_by_3(5): " ++ show(multiply_by_3(5)) ++ ".\n"
main = putStr(message_2 ++ message_3)
