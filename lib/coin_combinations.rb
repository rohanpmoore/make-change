def make_change(total)
  plural = {"pennies" => 0, "nickels " => 1, "dimes " => 2, "quarters " => 3}
  singular = {"penny" => 0, "nickel " => 1, "dime " => 2, "quarter " => 3}
  coin_values = [1, 5, 10, 25]
  coins = [0,0,0,0]
  x = total
  change = ""
  index = 3
  until x == 0
    coin_value = coin_values[index]
    if x >= coin_value
      coins[index] += 1
      x -= coin_value
    else
      index -= 1
    end
  end
  index = 3
  until index < 0
    coin = coins[index]
    if coin > 0
      change += (coin > 1 ? "#{coin} #{plural.key(index)}" : "#{coin} #{singular.key(index)}")
    end
    index -= 1
  end
  change
end
