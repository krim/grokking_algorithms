# frozen_string_literal: true

module Sort
  module SelectionSort
    module_function

    def call(array)
      array_size = array.size

      array_size.times do |i|
        min_index = i

        (i..array_size - 1).each do |j|
          min_index = j if array[j] < array[min_index]
        end

        array[i], array[min_index] = array[min_index], array[i] if i != min_index
      end

      array
    end
  end
end
