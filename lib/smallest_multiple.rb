# Implement your procedural solution here!

def multiple(n, m)
    n % m == 0
end

def multiple_range(n, start, stop)
    if start == stop && multiple(n, stop)
        return true
    elsif multiple(n, start)
        return multiple_range(n, start + 1, stop)
    else 
        return false
    end
end

def smallest_multiple(range)
    i = range[1]
    until multiple_range(i, range[0], range[1])
        i += 1
    end
    return i
end

puts multiple_range(2520, 1, 10)
puts smallest_multiple([1, 10])
puts smallest_multiple([1, 12])
puts smallest_multiple([1, 20])