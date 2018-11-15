def make_change(total)
  pennies = 0
  nickels = 0
  dimes = 0
  quarters = 0
  x = total
  change = ""
  until x == 0
    if x >= 25
      quarters += 1
      x -= 25
    elsif x >= 10
      dimes += 1
      x -= 10
    elsif x >= 5
      nickels += 1
      x -= 5
    else
      pennies += 1
      x -= 1
    end
  end
  if quarters > 1
    change += "#{quarters} quarters "
  elsif quarters == 1
    change += "#{quarters} quarter "
  end
  if dimes > 1
    change += "#{dimes} dimes "
  elsif dimes == 1
    change += "#{dimes} dime "
  end
  if nickels > 1
    change += "#{nickels} nickels "
  elsif nickels == 1
    change += "#{nickels} nickel "
  end
  if pennies > 1
    change += "#{pennies} pennies"
  elsif pennies == 1
    change += "#{pennies} penny"
  end
end
