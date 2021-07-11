start_term = 1.0
multiplier = 1.5
series = start_term : [ x*multiplier | x <- series ]

message_1 = "First five terms: " ++ show(take 5 series) ++ ".\n"
message_2 = "Terms smaller than 20: " ++ show(takeWhile (<20) series) ++ ".\n"
main = putStr(message_1 ++ message_2)
