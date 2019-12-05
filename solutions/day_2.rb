# frozen_string_literal: true
require 'yaml'
module Day2
  def self.problem_a(program)
    program = program.first.split(',').map(&:to_i)
    computer = IntcodeComputer.new(program, 12, 2)
    computer.compute
  end

  def self.problem_b(program)
    program = program.first.split(',').map(&:to_i)
    100.times do |noun|
      100.times do |verb|
        computer = IntcodeComputer.new(program.dup, noun, verb)
        return 100 * noun + verb if computer.compute == 196_907_20
      end
    end
  end

  class IntcodeComputer
    def initialize(program, noun = nil, verb = nil)
      program[1] = noun if noun
      program[2] = verb if verb
      @program = program
    end

    def compute
      @program.each_slice(4) do |instruction|
        operation, value_slot_a, value_slot_b, target_slot = instruction
        return @program[0] if operation == 99
        raise 'Unkown operation' unless [1, 2].include? operation
  
        value_a = @program[value_slot_a]
        value_b = @program[value_slot_b]
        @program[target_slot] = operation == 1 ? value_a + value_b : value_a * value_b
      end
  
      raise 'No end of operation'
    end
  end
end
