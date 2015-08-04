require('rspec')
require('wordify')
require('pry')

describe('Fixnum#wordify') do

  it('takes number to ones place and returns word') do
    expect(1.wordify()).to(eq("one"))
  end

  it('takes a number to the tens place and returns word') do
    expect(11.wordify()).to(eq("eleven"))
  end

  it('takes a number above 20 (below 30) and returns the word twenty and the ones digit') do
    expect(21.wordify()).to(eq("twenty one"))
  end

  it('takes a number above 30 (below 100) and returns an appropriate string') do
    expect(32.wordify()).to(eq("thirty two"))
  end

  it("takes a number over 99 and returns the number followed by 'hundred'") do
    expect(100.wordify()).to(eq("one hundred"))
  end

  it("takes a complex number over 100 (and less than 1000) and returns an appropriate string") do
    expect(101.wordify()).to(eq("one hundred one"))
  end

end
