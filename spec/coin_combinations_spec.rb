require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it('if you give it a dollar it returns 4 quarters') do
  expect((100).coin_combinations()).to(eq("4 quarters"))
  end
  it('if you give it 70 cents it returns 2 quarters and 2 dimes') do
  expect((70).coin_combinations()).to(eq("2 quarters, 2 dimes"))
  end
  it('if you give it 65 cents it returns 2 quarters  1 dime and 1 nickle') do
  expect((65).coin_combinations()).to(eq("2 quarters, 1 dimes, 1 nickle"))
  end
  it('if you give it 99 cents it returns 2 quarters, 1 dimes, 1 nickle, 4 pennies') do
  expect((69).coin_combinations()).to(eq("2 quarters, 1 dimes, 1 nickle, 4 pennies"))
  end

end
