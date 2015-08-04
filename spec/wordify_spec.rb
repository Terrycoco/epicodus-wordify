require('rspec')
require('wordify')

describe('Fixnum#wordify') do

  it('takes number to ones place and returns word') do
    expect(1.wordify()).to(eq("one"))
  end

  it('takes a number to the tens place and returns word') do
    expect(11.wordify()).to(eq("eleven"))
  end

end
