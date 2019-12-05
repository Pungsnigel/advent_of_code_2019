# frozen_string_literal: true

module Day4
  class << self
    def problem_a(range)
      start, stop = range.first.split("-").map(&:to_i)
      (start..stop).count { |attempt| valid_password?(attempt) }
    end

    def problem_b(range)
      start, stop = range.first.split("-").map(&:to_i)
      (start..stop).count { |attempt| valid_password?(attempt, false) }
    end
      
    def valid_password?(attempt, allow_triplets = true)
      numbers = attempt.to_s.chars.map(&:to_i)
      return false unless has_adjecent_duplicates?(numbers, allow_triplets)
      return false if has_decreases?(numbers)
      true
    end

    def has_adjecent_duplicates?(numbers, allow_triplets)
      numbers.each_with_index do |n, i|
        if allow_triplets
          return true if numbers[i + 1] == n
        else
          return true if numbers[i + 1] == n && numbers[i + 2] != n && numbers[i - 1] != n
        end
      end
      false
    end

    def has_decreases?(numbers)
      numbers.each_with_index do |n, i|
        return true if numbers[i + 1] && numbers[i + 1] < n
      end
      false
    end
  end
end
