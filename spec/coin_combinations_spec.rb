require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it('if you give it a dollar it returns 4 quarters') do
  expect((100).coin_combinations()).to(eq("4 quarters"))
  end
  
end
