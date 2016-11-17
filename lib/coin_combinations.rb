class Fixnum
  define_method(:coin_combinations) do
    final_change = []
    cents_remaining = self
    if cents_remaining % 25 == 0
      quarters = cents_remaining / 25
      final_change.push(quarters.to_s + " quarters")
    elsif cents_remaining >= 25
      remainder = cents_remaining % 25
      quarters = (cents_remaining - remainder)/ 25
      final_change.push(quarters.to_s + " quarters")
      cents_remaining = remainder
    if cents_remaining % 10 == 0
      dimes = cents_remaining / 10
      final_change.push(dimes.to_s + " dimes")
    elsif cents_remaining >= 10
      remainder = cents_remaining % 10
      dimes = (cents_remaining - remainder)/ 10
      final_change.push(dimes.to_s + " dimes")
      cents_remaining = remainder
    end
    end
    final_change.join(", ")
  end
end
