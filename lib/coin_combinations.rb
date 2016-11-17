class Fixnum
  define_method(:coin_combinations) do |quarters, dimes, nickles|
    final_change = []
    cents_remaining = self
    coin_array = ['quarters', 'dimes', 'nickle', 'pennies' ]
    values_array = [25, 10, 5, 1]
    #change_amount = change_available
    # {"quarters" => 2,"dimes" => 1,"nickle" => 1, "pennies" => 1000000}
    change_amount = Hash.new()
    change_amount.store('quarters', quarters)
    change_amount.store('dimes', dimes)
    change_amount.store('nickle', nickles)
    change_amount.store('pennies', 10000)

    counter = 0
    until cents_remaining == 0
      # calculates amount of coins and assigns to coin number
      if cents_remaining >= values_array[counter]
        remainder = cents_remaining % values_array[counter]
        coin_number = (cents_remaining - remainder)/ values_array[counter]
      end
        # pushes coin number if enough coins exist
      if coin_number <= change_amount.fetch(coin_array[counter])
        final_change.push(coin_number.to_s + " " + coin_array[counter])
        cents_remaining = remainder
        # if the coin number is not enough then it pushes the amount of coins that remain
      else
        coin_number = change_amount.fetch(coin_array[counter])
        final_change.push(coin_number.to_s + " " + coin_array[counter])
        cents_remaining = cents_remaining - (coin_number * values_array[counter])
      end
        counter += 1
    end
    final_change.join(", ")
  end
end
