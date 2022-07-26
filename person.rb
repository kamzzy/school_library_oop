class Person
  def initialize(age, name = 'unknown', parent_permission: true)
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  private

  def of_age?
    true if @age >= 18
  end

  def can_use_services?
    true if is_of_age || @parent_permission == true
  end
end
