def insertion_sort(arr):
    for i in range(1, len(arr)):
        j = i
        while arr[j - 1] > arr[i] and j > 0:
            arr[j-1], arr[j] = arr[i], arr[j - 1]
            j -= 1


arr = [2, 6, 5, 1, 3, 4]
insertion_sort(arr)
print(arr)
    # [1, 2, 3, 4, 5, 6]

print(list(map(len, ['Tina', 'Raj', 'Tom'])))