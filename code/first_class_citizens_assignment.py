# f is a first-order function:
def f(x, y):
    return 2 * x - 3 * y + 2


g = f  # g is the same first-order function.
print(f"Value of g(4, 1): {g(4, 1)}.")
