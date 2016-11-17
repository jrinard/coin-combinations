require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it('if you give it a dollar it returns 4 quarters') do
  expect((100).coin_combinations()).to(eq("4 quarters"))
  end
  it('if you give it 70 cents it returns 2 quarters and 2 dimes') do
  expect((70).coin_combinations()).to(eq("2 quarters, 2 dimes"))
  end

end
