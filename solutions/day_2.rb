# frozen_string_literal: true
require 'yaml'
module Day2
  def self.problem_a(program)
    program = program.first.split(',').map(&:to_i)
    program[1] = 12
    program[2] = 2
    run_program(program)
  end

  def self.problem_b(changes) end

  def self.run_program(program)
    program.each_slice(4) do |instruction|
      operation, value_slot_a, value_slot_b, target_slot = instruction
      return program if operation == 99
      raise 'Unkown operation' unless [1, 2].include? operation

      value_a = program[value_slot_a]
      value_b = program[value_slot_b]
      program[target_slot] = operation == 1 ? value_a + value_b : value_a * value_b
    end

    raise 'No end of operation'
  end
end
