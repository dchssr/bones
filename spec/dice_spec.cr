SEEDS = {
    luggage_code: Random.new(12345),
    funny_number: Random.new(42069),
}

describe Bones::Die do
  it "Rolls a die in a quasi-random function" do
    d20 = Bones::Die.new(20)

    d20.randomness = SEEDS[:luggage_code]
    d20.first(10).to_a.should eq [10, 7, 15, 15, 4, 3, 7, 16, 3, 13]

    d20.randomness = SEEDS[:funny_number]
    d20.first(5).to_a.should eq [7, 15, 2, 9, 14]
  end
end
