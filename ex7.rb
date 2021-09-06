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

numList = gets.chomp.split("") # Espera-se uma string em formato de lista, por exemplo: "[1, 2, 6, 3, 5]"
numList.pop # Tirando o [
numList.shift # Tirando o ]
numList = numList.join("").split(", ") # Juntando tudo de novo em uma string e separando cada número
numList.map! {|s| s.to_i} # Transformando as strings em números

numList.select! {|n| isPrimo?(n)}
numList.map! {|n| n**2}

p numList
