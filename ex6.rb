cardapio = {
    :entrada => ["Bruschetta", "Salada", "Sopa", "Batata Frita", "Onion Rings"],
    :principal => ["Bobó de Camarão", "Escondidinho de carne", "Hambúrguer", "Salmão Defumado", "Macarrão ao molho pesto"],
    :sobremesa => ["Torta de Limão", "Petit Gateau", "Sorvete de Baunilha", "Banana Caramelizada", "Bolo de Cenoura"]
}
p [cardapio[:entrada][rand(5)], cardapio[:principal][rand(5)], cardapio[:sobremesa][rand(5)]]