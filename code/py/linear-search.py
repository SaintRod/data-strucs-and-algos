def linear_search(list:list, target):
    """
    Returns the index position of the target value from the given list
    """
    for i in range(0, len(list)):
        if list[i] == target:
            return i
    return None

input = range(0, 1001)
result = linear_search(input, 1000)
assert result == 1000

input = range(0, 1001)
result = linear_search(input, 2000)
assert result is None