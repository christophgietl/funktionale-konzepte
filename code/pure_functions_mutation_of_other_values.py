def f(x, y):
    global a
    a = 1_000
    return 2 * x - 3 * y + 2


a = -3
print(f"Value of a: {a}.")
f(4, 1)
print(f"Value of a: {a}.")
