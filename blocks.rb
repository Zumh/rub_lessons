# This is a block
# {puts "hello world"}

class Person
  attr_accessor :socialize

  def initialize
    @socialize = "I'm enjoying socializing!"
  end
end

class Club
  attr_accessor :members

  def initialize
    @members = []
  end

  def enroll(person)
    @members << person
  end

  def socialize
    @members.each do |person|
      puts person.socialize
    end
  end

  def do_block
    yield self if block_given?  # Executes the block and passes `self` (the club instance) into it
  end
end

club = Club.new
person = Person.new

# The `do ... end` block here is used to work with the club instance
club.do_block do |c|
  c.enroll(person)
  c.socialize
end

