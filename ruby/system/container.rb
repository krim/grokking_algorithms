# frozen_string_literal: true

require 'dry/system/container'

class App < Dry::System::Container
  use :env, inferrer: -> { ENV.fetch('APP_ENV', 'development').to_sym }

  configure do |config|
    config.name = :grokking_algorithms
    config.auto_register = %w[lib]
  end

  load_paths!('lib')
end
