class Manager

    attr_accessor :department, :name, :age, :employees
    
    @@all = []

    def initialize (name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        @employees << Employee.new(name, salary, self)
    end

    def all_departments
        Manager.all.collect{|manager_inst| 
            manager_inst.department}
    end

    def self.average_age
        all_age = @@all.map{|manager_inst| 
                manager_inst.age}
        count = all_age.count
        average_age = ((all_age).sum / count).to_f
    end
end
