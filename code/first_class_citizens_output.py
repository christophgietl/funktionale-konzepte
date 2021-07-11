def create_function():
    def func(x, y):
        return 2 * x - 3 * y + 2

    return func


f = create_function()
print(f"Value of f: {f}.")
print(f"Value of f(4, 1): {f(4, 1)}.")
