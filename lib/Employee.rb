# require 'pry'
class Employee

    attr_reader :name, :salary
    attr_accessor :manager

    @@all = []

    def initialize (name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self

    end
    
    def self.all
        @@all
    end

    def self.paid_over(salary)
        @@all.select{|employee_inst| 
            employee_inst.salary > salary}
    end

    def self.find_by_department(department)
        emp_magr = Manager.all.select{|manager_inst| manager_inst.department == department}

        emp_magr.find{|manager_inst| manager_inst.employees}
    end

    def tax_bracket
        Employee.all.map{|employee_inst| 
        if employee_inst.salary > self.salary - 1000.00 && employee_inst.salary < self.salary + 1000.00
            employee_inst.salary
        end}.compact

    end
end
