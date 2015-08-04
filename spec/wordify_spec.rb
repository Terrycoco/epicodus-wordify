require('rspec')
require('wordify')

describe('Fixnum#wordify') do

  it('takes number to ones place and returns word') do
    expect(1.wordify()).to(eq("one"))
  end

end
