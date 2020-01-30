# frozen_string_literal: true

# https://en.wikipedia.org/wiki/Quicksort

module Sort
  module QuickSort
    module_function

    def call(array)
      return array if array.size < 2

      # https://en.wikipedia.org/wiki/Quicksort#Choice_of_pivot
      random_array_index = rand(0..array.size - 1)
      pivot = array[random_array_index]
      left_array = []
      right_array = []

      array.each_with_index do |element, index|
        next if random_array_index == index

        element < pivot ? left_array.push(element) : right_array.push(element)
      end

      call(left_array) + [pivot] + call(right_array)
    end
  end
end
