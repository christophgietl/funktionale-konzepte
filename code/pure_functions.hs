a = 4
b = 1

 -- f is a pure function:
f(x, y) = 2 * x - 3 * y + 2

a_message_1 = "Value of a: " ++ show(a) ++ ".\n"
b_message_1 = "Value of b: " ++ show(b) ++ ".\n"
f_message = "Value of f(a, b): " ++ show(f(a,b)) ++ ".\n"
a_message_2 = "Value of a: " ++ show(a) ++ ".\n"
b_message_2 = "Value of b: " ++ show(b) ++ ".\n"

-- main and putStr are both monads:
main = putStr(a_message_1 ++ b_message_1 ++ f_message ++ a_message_2 ++ b_message_2)
