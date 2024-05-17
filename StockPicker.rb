def stock_picker(days)
  result = [0,0,0,0,0]

  days.each_with_index do |buy_price, day|
    subsequent_days = days.drop day
    sell_price = subsequent_days.max
    profit = sell_price - buy_price
    sale_day = subsequent_days.index(sell_price) + day

    if profit > result[4]
      result[0] = day
      result[1] = buy_price
      result[2] = sale_day
      result[3] = sell_price
      result[4] = profit
    end
  end
  puts "Buy on day #{result[0]} for #{result[1]} SPCUs, sell on day #{result[2]} for #{result[3]} SPCUs, yielding #{result[4]} SPCUs in profit"
end

stock_picker([43,16,37,89,3,59,2,28,76,6,54,21,23,100,48,51,20,47,66,14])
