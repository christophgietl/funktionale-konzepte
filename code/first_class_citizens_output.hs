add(y) = (\x -> x+y)
add2 = add(2)
add5 = add(5)
message2 = "Value of add2(10): " ++ show(add2(10)) ++ ".\n"
message5 = "Value of add5(10): " ++ show(add5(10)) ++ ".\n"
main = putStr(message2 ++ message5)
