class Fixnum
  define_method(:coin_combinations) do
    final_change = ""
    if self % 25 == 0
      quarters = self / 25
      final_change = quarters.to_s + " quarters"
    end
  end
end
