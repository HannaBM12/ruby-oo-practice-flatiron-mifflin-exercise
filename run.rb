require_relative "lib/Manager"
require_relative "lib/Employee"
# require 'pry'

#Test your code here
Hanna = Manager.new("Hanna", "Marketing", 25)
Hella = Manager.new("Hella", "Sales", 29)


Muna = Employee.new("Muna", 2000, "Hanna")
Mike = Employee.new("Mike", 3500.00, "Hella")


Hanna.hire_employee("Sami", 2050.00)

Hanna.all_departments
Hella.all_departments

# Hanna.all_departments
# Employee.find_by_department("Marketing")
 Hanna.employees
#  p emp_magr
Employee.find_by_department("Marketing")
p Muna.tax_bracket
# binding.pry
puts "done"
