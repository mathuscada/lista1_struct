def isPrimo?(numero)
    if numero == 0 || numero == 1
        return false
    end
    for i in 2..numero - 1
        if numero % i == 0
            return false
        end
    end
    return true
end

n = gets.to_i
puts isPrimo?(n)