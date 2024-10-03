def recursive_binary_search(list:list, target):
    """
    Returns True if the target value is found in the given list, False otherwise
    """
    if len(list) == 0:
        return False
    else:
        midpoint = len(list) // 2
    
        if list[midpoint] == target:
            return True
        else:
            if list[midpoint] < target:
                return recursive_binary_search(list[midpoint + 1:], target)
            else:
                return recursive_binary_search(list[:midpoint], target)

input = list(range(0, 1001))
result = recursive_binary_search(input, 1000)
assert result, "result is not true"

input = range(0, 1001)
result = recursive_binary_search(input, 2000)
assert not result