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

    ones.fetch(self)

  end
end
