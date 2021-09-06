numList = gets.chomp.split("") # Espera-se uma string em formato de lista, por exemplo: "[1, 2, 6, 3, 5]"
numList.pop # Tirando o [
numList.shift # Tirando o ]
numList = numList.join("").split(", ") # Juntando tudo de novo em uma string e separando cada número
numList.map! {|s| s.to_i} # Transformando as strings em números
if numList.length % 2 == 0
    #mediana = numList.sort[(numList.length/2 - 1)..numList.length/2] # Código se a mediana for calculada como o enunciado (dois valores)
    mediana = numList.sort[(numList.length/2 - 1)..numList.length/2].sum/2.0 # Código se a mediana for calculada como o exemplo (média dos valores)
else
    mediana = numList.sort[numList.length/2]
end
info = {
    :primeiro => numList[0],
    :quantidade => numList.length,
    :ultimo =>numList[-1],
    :soma => numList.sum,
    :media => numList.sum/numList.length.to_f,
    :mediana => mediana,
    :ordenada => numList.sort
}
p info