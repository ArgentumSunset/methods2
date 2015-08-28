module Methods2
	
def elevenish?(n)
	if(n % 11 == 0 || n % 11 == 1)
		return true
	else
		return false
	end
end
	
def ice_cream_party(ice_cream, candy)
	if(ice_cream >= 5 && candy >= 5)
		if(ice_cream >= (candy * 2)|| candy >= (ice_cream * 2))
			2;
		else
			1;
		end
	else
		0;
	end
end
	
def successful_squirrel_party?(nuts, weekend)
	if(nuts >= 40)
		if(weekend)
			true
		else
			if(nuts <= 60)
				true
			else
				false
			end
		end
	else
		false
	end
end
	
def ticket(a,b,c)
	if(a * b == 10 || b * c == 10 || c * a == 10)
		10
	elsif((a * b)-(b * c) == 10 || (a * b)-(a * c) == 10)
		5
	else
		0
	end
end

	# TODO - write in_order?

	# TODO - write less_by_ten?
	
	# TODO - write fizz_string

	# TODO - write first_last_six?

	# TODO - write rotate_left

	# TODO - write double23?

end