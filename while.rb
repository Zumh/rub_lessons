weight = 89
num_pallets = 27
class Pallet
  attr_accessor :weight
end
def next_pallet()
  pallet = Pallet.new
  pallet.weight = 78
  return pallet
end
while weight < 100 and num_pallets <= 30
  pallet = next_pallet()
  weight += pallet.weight
  num_pallets += 1
  
  puts num_pallets
  puts "weight is #{weight}"
end


