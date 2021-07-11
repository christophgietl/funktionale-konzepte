def factorial(n):
    if n == 0:
        return 1
    return n * factorial(n - 1)


print(f"Value of factorial(12): {factorial(12)}.")
print(f"Value of factorial(1000): {factorial(1000)}.")
