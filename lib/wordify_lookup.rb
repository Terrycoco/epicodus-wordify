class Fixnum
  define_method(:wordify_lookup) do
    ones = Hash.new()
    ones.store(0,"")
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
    ones.store(20,"twenty ")
    ones.store(30,"thirty ")
    ones.store(40, "forty ")
    ones.store(50,"fifty ")
    ones.store(60, "sixty ")
    ones.store(70, "seventy ")
    ones.store(80, "eighty ")
    ones.store(90, "ninety ")

    newnum = self
    words = ""

    if newnum.>(20)

      input_one = newnum % 10
      input_hundred = newnum.div(100)
      newnum = newnum - input_hundred.*(100)
      input_ten = newnum.div(10).*(10)
      if input_hundred.>(0)
        words.concat(ones.fetch(input_hundred))
        words.concat(" hundred ")
      end

      words.concat(ones.fetch(input_ten))

      if input_one.>(0)
        words.concat(ones.fetch(input_one))
      end
    else
      words.concat(ones.fetch(newnum))
    end

    return words.strip()
  end
end
