def stock_picker(prices)
    max_profit = 0
    best_buy = 0
    best_sell = 0
    (0..prices.length - 2).each do |buy_date|
      (buy_date + 1..prices.length - 1).each do |sell_date|
        if prices[sell_date] - prices[buy_date] > max_profit
          max_profit = prices[sell_date] - prices[buy_date]
          best_buy = buy_date
          best_sell = sell_date
        end
      end
    end
    return [best_buy, best_sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])