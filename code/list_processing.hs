square([]) = []
square(x:xs) = (x*x):square(xs)
main = putStrLn("Value of square([1,2,3]): " ++ show(square([1,2,3])) ++ ".")
