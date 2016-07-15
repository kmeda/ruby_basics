def stock_picker(list)

	maxProfit  = 0
	purchDay = 0

	while purchDay < list.length
		sellDay = purchDay + 1
		while sellDay < list.length
			profit = list[sellDay] - list[purchDay]
			if profit > maxProfit
				maxProfit = profit
				buy = purchDay
				sell = sellDay
			end
			sellDay += 1
		end
		purchDay += 1	
	end
	return [buy, sell]
end
stock_prices = [17,3,6,9,15,8,6,10,10]

print stock_picker(stock_prices)