def binary_search(list:list, target):
    """
    Returns the index position of the target value from the given list
    """
    first = 0
    last = len(list) - 1
    
    while first <= last:
        midpoint = (first + last) // 2
        
        if list[midpoint] == target:
            return midpoint
        elif list[midpoint] < target:
            first = midpoint + 1
        else:
            last = midpoint - 1
    
    return None

input = range(0, 1001)
result = binary_search(input, 1000)
assert result == 1000

input = range(0, 1001)
result = binary_search(input, 2000)
assert result is None