class Fixnum
  define_method(:coin_combinations) do
    final_change = []
    cents_remaining = self
    coin_array = ['quarters', 'dimes', 'nickle', 'pennies' ]
    values_array = [25, 10, 5, 1]

    counter = 0
    until cents_remaining == 0
      if cents_remaining >= values_array[counter]
        remainder = cents_remaining % values_array[counter]
        coin_number = (cents_remaining - remainder)/ values_array[counter]
        final_change.push(coin_number.to_s + " " + coin_array[counter])
        cents_remaining = remainder
      end
        counter += 1
    end
    final_change.join(", ")
  end
end


# counter = 0
# until cents_remaining == 0
#   if cents_remaining % 25 == 0
#     quarters = cents_remaining / 25
#     final_change.push(quarters.to_s + " quarters")
#   elsif cents_remaining >= 25
#     remainder = cents_remaining % 25
#     quarters = (cents_remaining - remainder)/ 25
#     final_change.push(quarters.to_s + " quarters")
#     cents_remaining = remainder
#   if cents_remaining % 10 == 0
#     dimes = cents_remaining / 10
#     final_change.push(dimes.to_s + " dimes")
#   elsif cents_remaining >= 10
#     remainder = cents_remaining % 10
#     dimes = (cents_remaining - remainder)/ 10
#     final_change.push(dimes.to_s + " dimes")
#     cents_remaining = remainder
#   end
