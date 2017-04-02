def hourglass_sum(array, start_row, start_column)
    array[start_row][start_column]         + # top row,    left column
    array[start_row][start_column + 1]     + # top row,    middle column
    array[start_row][start_column + 2]     + # top row,    right column
    array[start_row + 1][start_column + 1] + # middle row, middle column
    array[start_row + 2][start_column]     + # bottom row, left column
    array[start_row + 2][start_column + 1] + # bottom row, middle column
    array[start_row + 2][start_column + 2]   # bottom row, right column
end

arr = Array.new(6)
for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end

max_sum = -324 # smallest possible sum, given the constraints

for row_index in (0..3)
    for column_index in (0..3)
        sum = hourglass_sum(arr, row_index, column_index)
        max_sum = sum if sum > max_sum
    end
end

puts max_sum
