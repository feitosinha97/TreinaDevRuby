puts "Bem-vindo ao Cookbook, sua rede social de receitas"

receitas = [] #é um array

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"

print "Escolha uma opção: " #o gets fica na mesma linha em vez de na linha seguinte como no puts
opcao = gets.to_i()


#while(1 = 1) #operador de igualdade, não de pergunta. valor de array. significa que vai jogar na posição 1 do array (segundo elemento) o valor de 1
while(opcao != 3) do #operador de pergunta
    if (opcao == 1)
        puts "Digite o nome da receita: "
        nome = gets.chomp() #o valor que a pessoa digitar nessa parte do programa será salvo na variável nome

        receitas << nome #receitas recebe os valores da variável nome, ou seja, a receita digitada pelo usuário vai pro array receitas

        # puts "Receita " + nome + " cadastrada com sucesso!"
        puts #imprime linha em branco
        puts "Receita #{nome} cadastrada com sucesso!"
        puts
    elsif (opcao == 2)
        puts "========= Receitas cadastradas =========="
        puts receitas
        puts
        puts
    else
        puts "Opção inválida."
    end
    
    #linhas de código abaixo é pra que não fique loop infinito

    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas"
    puts "[3] Sair"

    print "Escolha uma opção: " #o gets fica na mesma linha em vez de na linha seguinte como no puts
    opcao = gets.to_i() 

    #aqui é um for em ruby
    # for receita in receitas do
    #    puts receita
    #end
    #método it é mais comum que o for
   # receitas.each do |receita|
    #    puts receita
    #end
    #pra cada item, ele vai iterando e executando algo
    #na frente do do, qual a variável será usada em cada item, percorre o array usando o each, chamando cada casa de receita
end

puts "Obrigada por usar o cookbook."