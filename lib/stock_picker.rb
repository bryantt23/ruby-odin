def stock_picker(prices)
  lowest_price = Float::INFINITY
  max_profit = 0
  lowest_price_index = -1
  highest_price_index = -1
  res = []
  prices.each_with_index do |price, index|
    if price < lowest_price
      lowest_price = price
      lowest_price_index = index
    end

    cur_profit = price - lowest_price
    if cur_profit > max_profit
      max_profit = cur_profit
      highest_price_index = index
      res = [lowest_price_index, highest_price_index]
    end
  end
  res
end
