def triangulo(largura)
    for i in 1..largura
        for j in 1..i
            print "*"
        end
        puts ""
    end
    for i in (largura-1..1).step(-1)
        for j in (i..1).step(-1)
            print "*"
        end
        puts ""
    end
end

print "Coloque uma largura para o triângulo: "
l = gets.to_i
triangulo(l)
