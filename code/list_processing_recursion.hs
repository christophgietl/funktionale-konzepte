-- Define a function mult_list_elems_by_2 which takes a list of numbers and
-- returns a list containing all these numbers multiplied by 2:
mult_list_elems_by_2([])   = []
mult_list_elems_by_2(x:xs) = (x*2):mult_list_elems_by_2(xs)

-- Syntax used in the above definition:
-- - "[]" is the empty list.
-- - ":" on the left-hand side splits each non-empty list into
--    - its first element x and
--    - the list xs containing its remaining elements.
-- - ":" on the right-hand side creates a list by concatenating
--    - the number (x*2) and
--    - the list mult_list_elems_by_2(xs).

msg = "Value of mult_list_elems_by_2([1,2,3]): " ++ show(mult_list_elems_by_2([1,2,3])) ++ "."
main = putStrLn(msg)
