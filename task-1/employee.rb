require_relative 'person.rb'
require_relative 'service.rb'
require 'debug'


class Employee < Person

  attr_accessor :salary, :company, :document
  @@employee_id = 1


  def initialize(salary:, company:, document:, **options)
    super(**options)
    @@employee_id += 1
    @salary = salary
    @company = company
    @document = document
  end

  while true

    p "Menu:"
    p "1. create a new employee"
    p "2. show employees"
    p "3. show employee for id"
    p "4. search employee for company"
    p "5. delete employee"
    p "6. obtain birth date of employee"
    p "7. exit"

    option = gets.chomp.to_i

    case option
    when 1
      #create employee
      p "insert the name of the employee:"
      name = gets.chomp
      id = @@employee_id
      p "insert the age of the employee:"
      age = gets.chomp.to_i
      p "insert the salary of the employee:"
      salary = gets.chomp.to_i
      p "insert the company name of the employee:"
      company = gets.chomp
      p "insert the document number of the employee:"
      document = gets.chomp.to_i

      if Service.document(document)
        @@employee_id += 0
        p "The document already exists"
      else
        employee = Employee.new(name: name, age: age, id: id,  salary: salary, company: company, document: document)
        Service.employees.push(employee)
        p "the Employee is created successfully"
      end
    when 2
      #show all employees
      employees = Service.show
      employees.each { |employee| p "Name of the employee: #{employee.name}" }
    when 3
      #id
      employee_by_id = Service.show
      employee_by_id.each { |employee| p "ID of the employee: #{employee.id}" }
    when 4
      #company
      p "Enter the company name:"
      company_name = gets.chomp
      employees = Service.select_by_company(company_name)
      p "Employees from #{company_name}:"
      employees.each { |e| p e.name }
    when 5
      #delete
      p "Insert ID of the employee for delete:"
      employee_id = gets.chomp.to_i
      Service.delete_by_id(employee_id)
      if employee_id == id
        p "the employee with ID #{employee_id} was deleted"
        elsif
          p "the id not exist"
      end
    when 6
      p Person.birth_date(age)
    when 7
      p "Exiting..."
      exit
    else
      p "invalid option"
    end
  end
end
