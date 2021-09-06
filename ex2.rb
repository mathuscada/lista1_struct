def zeros(a, b, c)
    delta = b**2.0 - 4.0*a*c
    if delta < 0.0
        return false
    elsif delta > 0.0
        return (-b+Math.sqrt(delta))/(2*a), (-b-Math.sqrt(delta))/(2*a)
    else
        return -b/(2*a) 
    end
end

print "Coloque o valor dos parâmetros a, b, c: "
a = gets.to_f
b = gets.to_f
c = gets.to_f
if zeros(a, b, c)
    puts "O(s) resultado(s) é(são): "
    p zeros(a, b, c)
else
    puts "Não há solução real"
end