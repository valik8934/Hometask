class Dog
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end
end

def age=(value)
  if value < 0
    raise "An age of #{value} isn't valid!"
  end
  @age = value
end

def move(destination)
  puts "#{@name} runs to the #{destination}."
end

def talk
  puts "#{@name} says Bark!"
end

def report_age
  puts "#{@name} is #{@age} years old."
end

dog = Dog.new
dog.name = "Sam"
dog.age = 4
dog.report_age
dog.talk
dog.move("park")