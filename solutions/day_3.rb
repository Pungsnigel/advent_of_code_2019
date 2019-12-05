# frozen_string_literal: true

module Day3
  class << self
    def problem_a(lines)
      line_a, line_b = lines.map { |line| line.split(',') }
      collisions = coordinates_in_path(line_a) & coordinates_in_path(line_b)
      collisions.delete({x: 0, y: 0})
      collisions.map do |coordinate|
        manhattan_distance(coordinate, { x: 0, y: 0 })
      end.min
    end

    def problem_b(lines)
      line_a, line_b = lines.map { |line| line.split(',') }
      line_a_coordinates = coordinates_in_path(line_a)
      line_b_coordinates = coordinates_in_path(line_b)
      collisions = line_a_coordinates & line_b_coordinates
      collisions.delete({x: 0, y: 0})
      collisions.map do |coordinate|
        line_a_coordinates.index(coordinate) + line_b_coordinates.index(coordinate)
      end.min
    end

    private

    def coordinates_in_path(path)
      coordinates = [{ x: 0, y: 0 }]
      path.each do |step|
        _, direction, number_of_steps = step.partition(/\D/)
        number_of_steps = number_of_steps.to_i
        while number_of_steps > 0
          coordinates << next_coordinate(coordinates.last, direction)
          number_of_steps -= 1
        end
      end

      coordinates
    end

    def next_coordinate(coordinate, direction)
      next_coordinate = coordinate.dup
      case direction
      when 'R' then next_coordinate[:x] += 1
      when 'L' then next_coordinate[:x] -= 1
      when 'U' then next_coordinate[:y] += 1
      when 'D' then next_coordinate[:y] -= 1
      end
      next_coordinate
    end

    def manhattan_distance(c1, c2)
      (c1[:x] - c2[:x]).abs + (c1[:y] - c2[:y]).abs
    end
  end
end
