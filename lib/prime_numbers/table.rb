require "terminal-table"
require "prime"

module PrimeNumbers
  class Table
    attr_reader :n

    def initialize(n = 10)
      @n = n
    end

    def to_s
      table.to_s
    end

    private
    def table
      Terminal::Table.new(headings: headings, rows: rows)
    end

    def headings
      [""] + prime_numbers
    end

    def prime_numbers
      Prime.first(n)
    end

    def rows
      prime_numbers.map { |row|
        [row] + prime_numbers.map { |column| row * column }
      }
    end
  end
end
