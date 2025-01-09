weight = 89
num_pallets = 77
def next_pallet()
    return 78
end
while weight < 100 and num_pallets <= 30
  pallet = next_pallet()
  weight += pallet.weight
  num_pallets += 1

end


