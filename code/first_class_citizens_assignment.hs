f(x, y) = 2 * x - 3 * y + 2 -- f is a first-order function.
g = f                       -- g is the same first-order function.
message = "Value of g(4, 1): " ++ show(g(4, 1)) ++ "."
main = putStrLn(message)