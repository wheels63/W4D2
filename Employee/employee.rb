class Employee

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        @boss.add_employee(self) if !boss.nil?
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end

end
=begin
creating the tree
ned manager instance does not have a boss
darren manager instance set boss -> ned
shawna/david employee insances set boss -> darren

searching thru the tree
ned.employees.each
    darren.employees - > shawna and david
    set each employee as a var
dfs

=end