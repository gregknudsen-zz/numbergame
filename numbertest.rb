# => 4-24-13
# => Method created by Steve M. and Greg K.
# => but mainly by Steve M.

def rand_between( min, max )
	min + rand(max - min + 1)  
end