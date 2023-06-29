# frozen_string_literal: true

require "yaml"

module Jumon
  class Prompt
    attr_reader :system, :user

    def initialize(yaml)
      @system = yaml[:prompts][:system]
      @user = yaml[:prompts][:user]
    end
  end
end