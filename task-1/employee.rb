require_relative 'person.rb'
require 'debug'


class Employee < Person

  attr_accessor :salary, :company, :document
  @@employee_id = 0
  @employees = []

  def initialize(salary:, company:, document:, **options)
    super(**options)
    @@employee_id += 1
    @id = @@employee_id
    @salary = salary
    @company = company
    @document = document
  end

  def self.select_by_company(company_name)
    @employees.select { |employee| employee.company == company_name }
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
      id = @id
      p "insert the age of the employee:"
      age = gets.chomp.to_i
      p "insert the salary of the employee:"
      salary = gets.chomp.to_i
      p "insert the company name of the employee:"
      company = gets.chomp
      p "insert the document number of the employee:"
      document = gets.chomp.to_i

      employee = Employee.new(name: name, age: age, id: id,  salary: salary, company: company, document: document)
      if @employees.any? { |e| e.document == document }
        p "The document already exists"
      else
        @employees.push(employee)
        p "the Employee is created successfully"
      end
    when 2
      #show all employees
      @employees.each do |employee|
        p " Name of the employee: #{employee.name}"
      end
    when 3
      #id
      @employees.each do |employee|
        p "ID of the employee: #{employee.id}"
      end
    when 4
      #company
      print "Enter the company name:"
      company_name = gets.chomp
      employees = Employee.select_by_company(company_name)
      p "Employees from #{company_name}:"
      employees.each { |e| p e.name }
    when 5
      #delete
      @employees.delete_if { |e| e == @employees.last }
      p "The last employee has been deleted"
    when 6
      employee = Person.new(age: age, name: name, id: id)
      p employee.birth_date
    when 7
      p "Exiting..."
      exit
    else
      p "invalid option"
    end
  end
end
