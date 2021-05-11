require_relative "employee"

class Manager < Employee
    attr_reader :name, :title, :salary, :boss, :employees

    def initialize(name, title, salary, boss) #ned, founder, 100000, nil
        super
        @employees = []
    end

    # def hire_employee(name, title, salary) #ned is boss of the employees added under him so we can call self here
    #     if condition
    #         Manager.new(name, title, salary, self)
    #     else
    #         Employee.new(name, title, salary, self)
    #     end
    #     #ned
    # end

    def add_employee(employee)
        @employees << employee
    end
    # add_employee(ned)
    # ned.employ = [darren]
    # darren.employ = [shawna, david]

    def bonus(multiplier)
        total_emp_sal = 0
        # @employees.each do |employee|
        #     total_emp_sal += employee.dfs
        # end
        employees.summing_salaries
        bonus = total_emp_sal * multiplier
    end

    def summing_salaries
        return nil if self.length < 1
        return self[0] if self.length == 1 
        
        self[0] + summing_salaries(self[1..-1])
    end

    # def recursion
    #     base case return salary if child = nil
    #     self.employ.each 
    #     sum += child.recursion
    # end

    # def dfs
    #     return self.salary if self.nil?
    #     self.employees.each do |child|
    #       search_child = child.dfs
    #       return search_child if search_child != nil
    #     end
    #     return nil
    # end

end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 70000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)

=begin 

Name	Salary	    Title	    Boss
Ned	    \$1,000,000	Founder	    nil
Darren	\$78,000	TA Manager	Ned
Shawna	\$12,000	TA	        Darren
David	\$10,000	TA	        Darren

=end