# frozen_string_literal: true

require 'rash/shell/pry'
require 'rash/shell/version'

module Rash
  # :no-doc:
  module Shell
    module_function

    def environment
      ENV['APP_ENV'] || ENV['RAILS_ENV'] || ENV['RACK_ENV'] || 'development'
    end

    def environment_color
      environment == 'production' ? "\e[38;5;124m" : "\e[38;5;107m"
    end

    def environment_with_color
      "#{environment_color}#{environment}\033[0m"
    end
  end
end
