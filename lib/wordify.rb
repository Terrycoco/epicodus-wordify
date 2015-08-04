class Fixnum
  define_method(:wordify) do
    ones = Hash.new()
    ones.store(1,"one")
    ones.store(2,"two")
    ones.store(3,"three")
    ones.store(4,"four")
    ones.store(5,"five")
    ones.store(6,"six")
    ones.store(7,"seven")
    ones.store(8,"eight")
    ones.store(9,"nine")
    ones.store(10,"ten")
    ones.store(11,"eleven")
    ones.store(12,"twelve")
    ones.store(13,"thirteen")
    ones.store(14,"fourteen")
    ones.store(15,"fifteen")
    ones.store(16,"sixteen")
    ones.store(17,"seventeen")
    ones.store(18,"eighteen")
    ones.store(19,"nineteen")
    ones.store(20,"twenty")

    if self.>(20)
      input_one = self % 10
      input_ten = self.div(10).*(10)
      words = ones.fetch(input_ten)
      words.concat(" ")
      words.concat(ones.fetch(input_one))
    else
      words = ones.fetch(self)
    end

    return words
  end
end
