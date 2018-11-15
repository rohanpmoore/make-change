require('rspec')
require('coin_combinations')

describe('make_change') do
  it('will return 1 penny if we pass in a total of 1 cent') do
    expect(make_change(1)).to(eq('1 penny'))
  end
  it('will return the number of pennies up to 4 cents') do
    expect(make_change(4)).to(eq('4 pennies'))
  end
  it('will return a combination of pennies and nickels for cents up to 9') do
    expect(make_change(9)).to(eq('1 nickel 4 pennies'))
  end
  it('will return a combination of pennies, nickels, and dimes for cents up to 24') do
    expect(make_change(17)).to(eq('1 dime 1 nickel 2 pennies'))
  end
  it('will return a combination of coins for any value in change') do
    expect(make_change(94)).to(eq('3 quarters 1 dime 1 nickel 4 pennies'))
  end
end
