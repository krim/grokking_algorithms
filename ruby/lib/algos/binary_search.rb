# frozen_string_literal: true

# https://en.wikipedia.org/wiki/Binary_search_algorithm

class BinarySearch
  extend Dry::Initializer
  extend Callable

  param :array, Types::Strict::Array, reader: :private
  param :element, Types::Strict::Integer, reader: :private

  def call
    min_index = 0
    max_index = array.size - 1

    find_element(min_index, max_index)
  end

  private

  def find_element(min_index, max_index)
    while min_index <= max_index
      mid_index = (min_index + max_index) / 2
      found_element = array[mid_index]
      return mid_index if found_element == element

      if found_element > element
        max_index = mid_index - 1
      else
        min_index = mid_index + 1
      end
    end
  end
end
