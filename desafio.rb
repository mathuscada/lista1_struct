print "Digite as dimensões da matriz(Ex: 3, 4 para uma matriz 3x4): "
dimensoes = gets.chomp.split(", ").map{|s| s.to_i}
matriz = Array.new(dimensoes[0])
for i in 0...dimensoes[0]
    matriz[i] = Array.new(dimensoes[1])
end
for i in 0...dimensoes[0]
    for j in 0...dimensoes[1]
        print "Digite o elemento na linha #{i} e na coluna #{j}: "
        matriz[i][j] = gets.to_i
    end
end
puts "A matriz colocada foi:"
for i in 0...dimensoes[0]
    print "| "
    for j in 0...dimensoes[1]
        print(matriz[i][j], " ")
    end
    puts "|"
end

matrizResultante = Array.new(dimensoes[0])

for i in 0...dimensoes[0]
    if dimensoes[1] % 2 == 0
        matrizResultante[i] = matriz[i].delete_at(dimensoes[1]/2- 1, 2)
    else
        matrizResultante[i] = matriz[i].clone
        matrizResultante[i].delete_at(dimensoes[1]/2)
    end
end
matrizResultante = matrizResultante.transpose
puts "A Matriz resultante é: "
for i in 0...matrizResultante.length
    print "| "
    for j in 0...matrizResultante[0].length
        print(matrizResultante[i][j], " ")
    end
    puts "|"
end
   