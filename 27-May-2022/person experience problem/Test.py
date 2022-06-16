def integer(a=int(),b=int()):
    return (a+b)
def float(a=float(),b=float()):
    return (a+b)

print(integer(1,1))
print(float(1.0,2.0))

integer_number = 8
float_number = 8.0
print(type(integer_number))
print(type(float_number))
print(integer_number+int(float_number))


# write a function that accepts a list and index as input and returns the element at that index. If the index is invalid, print an err and return None
#Example: list = [1,2,3,4,5] and index = 2
def function_name(list_name = [],index= int()):
    if index <= len(list_name):
        return list_name[index]
    else:
        return ('error')


print(function_name([1,2,3,4,5],2))
print(function_name([1,2,3,4,5],-1))
print(function_name([1,2,3,4,5],6))