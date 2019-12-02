# frozen_string_literal: true

module Day1
  class << self
    def problem_a(masses)
      masses.map(&:to_i).sum { |mass| mass / 3 - 2 }
    end

    def problem_b(masses)
      masses.map(&:to_i).sum { |mass| required_fuel_for_mass(mass) }
    end

    def required_fuel_for_mass(mass)
      required_fuel = mass / 3 - 2
      return 0 if required_fuel <= 0

      required_fuel + required_fuel_for_mass(required_fuel)
    end
  end
end
