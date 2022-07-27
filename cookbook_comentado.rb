INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
SAIR = 3 #constantes em ruby, elas valem números nesse código, assim o programa não quebra tão facilmente e fica mais extensível

def bem_vindo
    puts "Bem-vindo ao Cookbook, sua rede social de receitas"
end

def menu()
    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas"
    puts "[3] Sair"

    print "Escolha uma opção: " #o gets fica na mesma linha em vez de na linha seguinte como no puts
    return gets.to_i() #o retorno do menu é o getsto_i
end

def inserir_receita()
    puts "Digite o nome da receita: "
    nome = gets.chomp() #o valor que a pessoa digitar nessa parte do programa será salvo na variável nome
    puts "Digite o tipo da receita: "
    tipo = gets.chomp() #o valor que a pessoa digitar nessa parte do programa será salvo na variável nome
    puts #imprime linha em branco
    puts "Receita #{nome} cadastrada com sucesso!"
    puts
    return { nome: nome, tipo: tipo }
end

def imprimir_receitas(receitas)
    puts "========= Receitas cadastradas =========="
    receitas.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}"
     end
    puts
end


bem_vindo() #chamou o método bem_vindo


receitas = [] #é um array

opcao = menu()


#while(1 = 1) #operador de igualdade, não de pergunta. valor de array. significa que vai jogar na posição 1 do array (segundo elemento) o valor de 1
while(opcao != 3) do #operador de pergunta
    if (opcao == 1)
        receitas << inserir_receita()
    elsif (opcao == 2)
       imprimir_receitas(receitas)
    else
        puts "Opção inválida."
    end
    
    #linhas de código abaixo é pra que não fique loop infinito

    #o gets fica na mesma linha em vez de na linha seguinte como no puts
    opcao = menu()

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