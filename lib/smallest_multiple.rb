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


def prime?(n)
    if n <= 3
        return n > 1
    elsif n % 2 == 0 || n % 3 == 0
        return false
    else
        i = 5
        while i * i <= n do
            if n % i == 0 || n % (i + 2) == 0
                return false
            end
            i = i + 6
        end
        return true
    end
end

def prime_multiple_range(n, start, stop)
    unless prime?(start)
        return multiple_range(n, start + 1, stop)
    end
    if start == stop && multiple(n, stop)
        return true
    elsif multiple(n, start)
        return multiple_range(n, start + 1, stop)
    else 
        return false
    end
end

def smallest_multiple(range)
    i = range[1] ** 2
    until multiple_range(i, range[0], range[1])
        i += 1
    end
    return i
end

def prime_smallest_multiple(range)
    i = range[1] ** 2
    until prime_multiple_range(i, range[0], range[1])
        i += 1
    end
    return i
end


puts multiple_range(2520, 1, 10)
puts smallest_multiple([1, 10])
puts smallest_multiple([1, 15])
# puts smallest_multiple([1, 20])

# Prime Version isn't much faster
puts prime_smallest_multiple([1, 10])
puts prime_smallest_multiple([1, 15])
puts prime_smallest_multiple([1, 20])