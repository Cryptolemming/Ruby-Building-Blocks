def stockPicker(stock_picker)

	$stock_picker = Array.new(7) { rand(100)}

	first = $stock_picker.each_with_index.min[1]
	sell_side = $stock_picker.slice(first..-1)
	last = $stock_picker.index(sell_side.each_with_index.max[0])

	if sell_side.count == 1
		last = "no sell possible"
	end

	result = [first, last]

end

stockPicker($stock_picker)