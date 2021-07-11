# The higher-order function define_multiply_by_function
# returns a first-order function as its output:
def define_multiply_by_function(multiplier):
    def multiply_by(x):  # first-order function
        return x * multiplier

    return multiply_by


multiply_by_2 = define_multiply_by_function(2)
multiply_by_3 = define_multiply_by_function(3)
print(f"Value of multiply_by_2(5): {multiply_by_2(5)}.")
print(f"Value of multiply_by_3(5): {multiply_by_3(5)}.")
