# frozen_string_literal: true

App.boot(:persistence) do
  init do
    require 'dry-initializer'
    require 'types'
    require 'callable'
  end
end
