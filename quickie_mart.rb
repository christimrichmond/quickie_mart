
def item_name(item)
   item_hash = {"newspaper" =>"WSJ", "gum" =>"bubble yum", "soda" => "coke", 
    	"lotto" =>"powerball", "candy" =>"skittles", "chips" => "doritos"}
item_hash[item]
end

def item_pic(item)
   pic_hash = {"newspaper" => "img//wsj-01.png", "gum" => "img//gum-01.png", "soda" => "img//coke-01.png", "lotto" => "img//powerball-01.png", "candy" => "img//candy-01.png", "chips" => "img//chips-01.png"}
    
pic_hash[item]
end

def item_price(item)
	price_hash = {"newspaper" => 1.50, "lotto" => 4.00, "gum" => 1.00, 
		"soda" => 1.25, "chips" => 1.50, "candy" => 2.00}

price_hash[item]
end

item_price_hash.each do |key, value|
	item = price/key
	item.times do
		result << value
		price -= key
	end
	end
result
end


