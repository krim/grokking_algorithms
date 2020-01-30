# frozen_string_literal: true

# https://en.wikipedia.org/wiki/Linear_search

class LinearSearch
  extend Dry::Initializer
  extend Callable

  param :array, Types::Strict::Array, reader: :private
  param :element, Types::Strict::Integer, reader: :private

  def call
    return if array.size.zero?

    array.each_with_index { |current_element, index| return index if current_element == element }

    nil
  end
end
