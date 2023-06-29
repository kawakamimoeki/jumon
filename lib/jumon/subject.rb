# frozen_string_literal: true

module Jumon
  class Subject
    attr_reader :template, :variables, :subjects

    def initialize(base)
      @template = base[:subject]
      @variables = base[:variables]
      @subjects = [@template]
    end

    def set_subjects
      return unless variables

      add_subject(0, 0)
      @subjects = @subjects.uniq.reject do |s|
        variables.any? { |v| s.include?("{{#{v[:name]}}}") }
      end
    end

    def add_subject(var_i, pat_i)
      copy = subjects.dup
      copy.each do |c|
        result = c.gsub(
          "{{#{variables[var_i][:name]}}}",
          variables[var_i][:patterns][pat_i]
        )
        @subjects.push(result)
      end

      if pat_i < variables[var_i][:patterns].length - 1
        add_subject(var_i, pat_i + 1)
      elsif var_i < variables.length - 1
        add_subject(var_i + 1, 0)
      end
    end
  end
end