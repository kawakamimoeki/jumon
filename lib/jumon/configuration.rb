# frozen_string_literal: true

module Jumon
  class Configuration
    attr_reader :model, :temperature

    def initialize(yaml)
      config = yaml[:config]
      @model = config[:model]
      @temperature = config[:temperature]
    end
  end
end