#!/usr/bin/env ruby
require 'benchmark'

SOLVED_DAYS = (1..2).freeze

SOLVED_DAYS.each do |day|
  require_relative "solutions/day_#{day}"
end

solution = nil
Benchmark.bm do |benchmark|
  SOLVED_DAYS.each do |day|
    %w[a b].each do |problem|
      puts "#{day}#{problem}:"
      klass = Object.const_get("Day#{day}")
      benchmark.report do
        input = File.readlines("./inputs/input_#{day}.txt")
        solution = klass.send("problem_#{problem}", input)
      end
      puts "Solution to #{day}#{problem}: #{solution}"
    end
  end
end
