class Fixnum
  define_method(:wordify) do
    require('wordify_lookup')
    words = ""
    newnum = self
    numstr = self.to_s().reverse()
    sections = numstr.length()

    case sections
    when  1..3
        words = newnum.wordify_lookup()
      when 4..6
        newnum = numstr[3..5].reverse().to_i()
        words = newnum.wordify_lookup().concat(" thousand ")
        newnum = numstr[0..2].reverse().to_i()
        words.concat(newnum.wordify_lookup())

      when 7..9

      when 10..12

      when 13

    end
    words
  end
end
