
def coin_changer(customer_payment)
  
	coin_value = {quarter: 25, dime: 10, nickel: 5, penny: 1}
	coins_returned = {quarter: 0, dime: 0, nickel: 0, penny: 0}

	coin_value.each do |actual_coins, value|

  		while customer_payment.to_i >= value.to_i
      		customer_payment = customer_payment.to_i - value.to_i
      		coins_returned[actual_coins] += 1
    	end
	end
  
	coins_returned.collect{|a,v| "#{a} #{v}   "}.join

end


