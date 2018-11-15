require('rspec')
require('coin_combinations')

describe('make_change') do
  it('will return 1 penny if we pass in a total of 1 cent') do
    expect(make_change(1)).to(eq('1 penny'))
  end
end
