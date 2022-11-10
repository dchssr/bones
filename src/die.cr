module Bones
  struct Die
    include Iterator(UInt32)

    getter sides : UInt32
    property randomness : Random = Random::DEFAULT

    def initialize(@sides : UInt32)
      if (@sides < 2)
        raise ArgumentError.new("A Die must have at least two sides")
      end
    end

    def roll : UInt32
      return @randomness.rand(@sides).succ
    end

    def next : UInt32
      return roll
    end

    def to_s
      return "1d#{@sides}"
    end
  end

  module Dice
    D4   = Die.new(4)
    D6   = Die.new(6)
    D8   = Die.new(8)
    D10  = Die.new(10)
    D12  = Die.new(12)
    D20  = Die.new(20)
    D100 = Die.new(100)
  end
end
