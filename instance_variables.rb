class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

end

# p = Person.new('L. Ron')
# puts p.name
# p.name = "New Name"
# puts p.name


