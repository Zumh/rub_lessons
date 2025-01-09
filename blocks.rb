class Person
  attr_accessor :socialize

  def initialize
    @socialize = "I love meeting new people!"
  end
end

class Club
  attr_accessor :members

  def initialize
    @members = []
  end

  def enroll(person)
    @members << person
    puts "#{person} has been enrolled in the club!"
  end

  def socialize
    @members.each do |person|
      puts person.socialize
    end
  end
end

club = Club.new
person = Person.new

# Enroll the person in the club and have them socialize
club.enroll(person)
club.socialize

