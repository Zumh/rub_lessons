a = [ 1, 'cat', 3.14 ] # array with three elements
a[0] # access the first element (1)
a[2] = nil # set the third element
# array now [ 1, 'cat', nil ]

puts a

puts "\n\n\n"
ages = []
@people = [{age: 1},{age: 2},{age: 3},{age: 4}]
for person in @people
  # append single value to reciever
  # this is for hash way to accessing value
  # ages << person.age is object way to access the value
  ages << person[:age] 
end
puts  ages


## animals array 
a = ['ant', 'bee', 'cat', 'dog', 'elk']
puts a
puts "\n\n"
puts "%w{} words way to initialize array"
puts "\n\n"
# this is the same:
b = %w{ ant bee cat dog elk }

puts b


## one of maping using hash
inst_section = {
  :cello => 'string'
}
puts inst_section

## better way to symbols hash
## use of symbol as hash key
inst_symbol_section = {
  clarinet: 'woodwind'
}
puts inst_symbol_section

## you can even intermix arrow and none arrows
## need one space between them if value is symbol 
inst_symbol_intermix = {
  cello:  :sring
}
puts inst_symbol_intermix
