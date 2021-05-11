require_relative "employee"

class Manager < Employee

    def initialize
        super
        @employees = []
    end

    def populate(name, title, salary, boss)
        employee = Employee.new(name, title, salary, boss)
        @employees << employee
    end

    def bonus(multiplier)
        total_emp_sal = 0
        @employees.each do |employee|
            total_emp_sal += employee.salary
        end
        bonus = total_emp_sal * multiplier
    end


end


=begin 

Name	Salary	    Title	    Boss
Ned	    \$1,000,000	Founder	    nil
Darren	\$78,000	TA Manager	Ned
Shawna	\$12,000	TA	        Darren
David	\$10,000	TA	        Darren

=end