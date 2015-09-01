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
	if((a + b == 10) || (b + c == 10) || (c + a == 10))
		10
	elsif((a + b)-(b + c) == 10 || (a + b)-(a + c) == 10)
		5
	else
		0
	end
end

def in_order?(a,b,c,bOk)
	if(c > b)
		if(bOk)
			true
		elsif(!bOk)
			if(b > a)
				true
			else
				false
			end
		end
	else
		false
	end
end

def less_by_ten?(a,b,c)
	ab = (a - b).abs
	ac = (a - c).abs
	bc = (b - c).abs
	if(ab >= 10 || ac >= 10 || bc >= 10)
		true
	else
		false
	end
end
	
def fizz_string(str)
	if(str.start_with?('f') && str.end_with?('b'))
		"FizzBuzz"
	elsif(str.end_with?('b'))
		"Buzz"
	elsif(str.start_with?('f'))
		"Fizz"
	else
		str
	end
end

def first_last_six?(ints)
	if(ints.first == 6 || ints.last == 6)
		true
	else
		false
	end
end

def rotate_left(ints)
	first = ints.shift
	ints << first
	ints
end

	# TODO - write double23?

end