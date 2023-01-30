class Service
  @employees = []

  def self.employees
    @employees
  end

  def self.document(document)
    @employees.any? { |e| e.document == document }
  end

  def self.show
    @employees.each do |employee|
    end
  end

  def self.delete_by_id(employee_id)
      @employees.delete_if { |employee| employee.id == employee_id }
  end

  def self.select_by_company(company_name)
    @employees.select { |employee| employee.company == company_name }
  end
end
