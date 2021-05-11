require_relative "employee"

class Manager < Employee

    def initialize
        employee = Employee.new(name, title, salary, boss)
        @employees = []
    end

    def bonus(multiplier)
        total_emp_sal = 0
        @employees.each do |employee|
            total_emp_sal += employee.salary
        end
        bonus = total_emp_sal * multiplier
    end

end