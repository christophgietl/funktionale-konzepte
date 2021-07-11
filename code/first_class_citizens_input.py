def multiply_by_2(x):  # first-order function
    return x * 2


def apply_to_five(f):  # higher-order function, takes a function as its input
    return f(5)


print(f"Value of apply_to_five(multiply_by_2): {apply_to_five(multiply_by_2)}.")
