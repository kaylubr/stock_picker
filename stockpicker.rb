def stock_picker(array)
  lowest = array[0]
  highest = 0
  profit = 0

  array.each_with_index do |buy_value, buy_index|
    array.each_with_index do |sell_value, sell_index|
      next if buy_value > lowest
      next if sell_index <= buy_index
      current_sale = sell_value - buy_value
      if current_sale > profit
        lowest = buy_value if 
        highest = sell_value
        profit = current_sale
      end
    end
  end

  [array.index(lowest), array.index(highest)]
end

# Will be refactoring this soon
