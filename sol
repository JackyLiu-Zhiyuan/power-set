PowerSet 

def powerset(array):
    results = []
    return helper(results, array)


def helper(results,array):
    if len(array) == 0:
        return [[]]

    last = [array[-1]] 
    array_without_last = array[:-1]
    currentResult = helper(results,array_without_last)
    for element in currentResult:
        print(element)
        results.append(element + last)

    return results

print(powerset([1,2,3]))


print([0] +  [1])

