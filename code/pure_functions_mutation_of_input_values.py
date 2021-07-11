def f(x):
    x[0] = 1_000
    return 2 * x[0] - 3 * x[1] + 2


a = [4, 1]
print(f"Value of a: {a}.")
f(a)
print(f"Value of a: {a}.")
