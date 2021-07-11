factorial(0) = 1
factorial(n) = n*factorial(n-1)

message = "Value of factorial(12): " ++ show(factorial(12)) ++ "."
main = putStrLn(message)
