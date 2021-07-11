import itertools


def series(start_term, multiplier):
    term = start_term
    # This part is not functional:
    while True:
        yield term  # The keyword "yield" turns this function into a generator function.
        term *= multiplier


my_series = series(start_term=1.0, multiplier=1.5)
first_five_terms = itertools.islice(my_series, 5)
print(f"First five terms: {list(first_five_terms)}.")

my_series = series(start_term=1.0, multiplier=1.5)  # Reset the generator by recreating it.
terms_smaller_than_20 = itertools.takewhile(lambda x: x < 20, my_series)
print(f"Terms smaller than 20: {list(terms_smaller_than_20)}.")
