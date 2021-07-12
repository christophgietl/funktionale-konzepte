def multiply_by_2(x):
    return x * 2


old_list = [1, 2, 3]
new_list = list(map(multiply_by_2, old_list))

print(f"Value of new_list: {new_list}.")
