def triangulo(largura, s, c)
    for i in 1..largura
        for j in 1..i
            for char in s.chars
                if rand(c) == 0
                    print char
                end
            end
        end
        puts ""
    end
    for i in (largura-1..1).step(-1)
        for j in (i..1).step(-1)
            for char in s.chars
                if rand(c) == 0
                    print char
                end
            end
        end
        puts ""
    end
end

print "Coloque uma largura para o triângulo: "
l = gets.to_i
print "Coloque um simbolo, palavra ou frase para o triângulo: "
s = gets.chomp
print "Coloque uma chance de acontecer: "
c = gets.to_i
triangulo(l, s, c)
