require_relative 'employee.rb'

class Manager < Employee
    attr_accessor :name, :title, :salary, :boss, :employees

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def bonus(multiplier)
        bonus = 0
        @employees.each do |employee|
            if employee.is_a?(Manager)
                employee.bonus(multiplier)
            else
                bonus += employee.salary
            end
        end
        bonus * multiplier
    end
end