def stock_picker(stock_prices, sample_arr = [])
  temp_prices = []
  stock_prices.each { |e| temp_prices << e.dup }
  profit = []
  min_stock, min_idx = temp_prices.each_with_index.min
  max_stock, max_idx = temp_prices.each_with_index.max
  if max_idx > min_idx
    sample_arr.each_with_index do |ele, idx|
      if min_stock == ele
        min_idx = idx
      elsif max_stock == ele
        max_idx = idx
      end
    end
    return [min_idx, max_idx]
  else
    temp_prices.delete_at(max_idx)
    temp_prices.delete_at(min_idx - 1)
    stock_picker(temp_prices, stock_prices)
  end
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
