programa
{
    funcao inicio()
    {
        // GRUPO: MAGIC DREAM CODE
        // SISTEMA DE TERMINAL INTERATIVO

        // INTEGRANTES:
        // Camila Aki Yagima Jeronimo
        // Clarissa Gomes Donato
        // Gabriele de Oliveira Andrade
        // Hillary Lopes da Silva

        // variáveis
        cadeia nomeJogador
        inteiro iniciarJogo
        inteiro opcaoMenu
        inteiro continuarJogo

        inteiro pontuacao
        inteiro felicidade
        inteiro dinheiro
        inteiro diaAtual

        // Inicio do programa
        
        escreva("=================================\n")
        escreva("MAGIC DREAM CODE\n")
        escreva("=================================\n")

        escreva("Olá! Você está prestes a viver a vida mais divônica de todas!\n") // inicio das mensagens
        escreva("Para iniciarmos, digite seu nome: ")
        leia(nomeJogador) // imprime / lê a variável

        escreva("Que nome incrível, ", nomeJogador, "!\n")
        escreva("Neste cenário você é uma desenvolvedora de software.\n")
        escreva("Seu objetivo é manter sua felicidade e construir uma jornada de sucesso!\n")

        escreva("Digite 1 para iniciar: ")
        leia(iniciarJogo)

        se (iniciarJogo == 1) // começa o jogo
        {
            // variáveis 
            pontuacao = 150
            felicidade = 80
            dinheiro = 200
            diaAtual = 1
            continuarJogo = 1

            enquanto 
            ((continuarJogo == 1) e (felicidade > 0) e (dinheiro > 0) e (diaAtual <= 30))
            {
                escreva("\n=========================\n")
                escreva("DIA ", diaAtual, "\n")
                escreva("=========================\n")

                escreva("Pontuação: ", pontuacao, "\n") // mostra pro usuário no terminal
                escreva("Felicidade: ", felicidade, "\n")
                escreva("Dinheiro: ", dinheiro, "\n")

                escreva("1 - Trabalhar\n") // mostra no terminal as opções o usuário escolhe
                escreva("2 - Estudar\n")
                escreva("3 - Relaxar\n")
                escreva("4 - Amigos\n")
                escreva("5 - Autocuidado\n")
                escreva("6 - Cuidar do Pet\n")
                escreva("7 - Projeto pessoal\n")
                escreva("Escolha: ")

                leia(opcaoMenu)

                se (opcaoMenu == 1) // trabalho
                {
                    pontuacao = pontuacao + 200
                    dinheiro = dinheiro + 150
                    felicidade = felicidade - 10

                    escreva("Você passou o dia programando novas funcionalidades.\n")
                    escreva("Seu código foi elogiado pela equipe!\n")
                    escreva("+200 pontos | +150 dinheiro | -10 felicidade\n")
                }

                se (opcaoMenu == 2) // estudo
                {
                    pontuacao = pontuacao + 165
                    felicidade = felicidade - 5

                    escreva("Você decidiu estudar novas tecnologias.\n")
                    escreva("Muito bem! Conseguiu aprender conceitos importantes da programação.\n")
                    escreva("+165 pontos | -5 felicidade\n")
                }

                se (opcaoMenu == 3) // relaxar
                {
                    felicidade = felicidade + 20
                    dinheiro = dinheiro - 50

                    escreva("Você relaxou na Dreamhouse.\n")
                    escreva("Ouvindo música e descansando.\n")
                    escreva("+20 felicidade | -50 dinheiro\n")
                }

                se (opcaoMenu == 4) // sair com os amigos 
                {
                    felicidade = felicidade + 15
                    dinheiro = dinheiro - 120

                    escreva("Você saiu com seus amigos para conversar e se divertir.\n")
                    escreva("+15 felicidade | -120 dinheiro\n")
                }

                se (opcaoMenu == 5) // autocuidado 
                {
                    felicidade = felicidade + 25
                    dinheiro = dinheiro - 150

                    escreva("Você tirou um tempo para cuidar de si mesma.\n")
                    escreva("Sua saúde mental também é importante.\n")
                    escreva("+25 felicidade | -150 dinheiro\n")
                }

                se (opcaoMenu == 6) // cuidar do pet
                {
                    felicidade = felicidade + 10
                    pontuacao = pontuacao + 82

                    escreva("Seu pet ficou muito feliz com sua atenção.\n")
                    escreva("+10 felicidade | +82 pontos\n")
                }

                se (opcaoMenu == 7) // projeto pessoal
                {
                    felicidade = felicidade + 5
                    pontuacao = pontuacao + 83

                    escreva("Você trabalhou em um projeto pessoal de programação.\n")
                    escreva("+83 pontos | +5 felicidade\n")
                }

                diaAtual = diaAtual + 1 // para continuar rodando o dia, dia 1, dia 2...

                escreva("\nDeseja continuar?\n") // caso digite no final " jornada em construção! "
                escreva("1 - Sim\n")
                escreva("2 - Não\n")

                leia(continuarJogo) // caso digite sim o loop continua até o dia <30
            }

            escreva("\n=========================\n") // imprime no terminal pro resultado final
            escreva("RESULTADO FINAL\n")
            escreva("=========================\n")

            se (felicidade <= 0) // condições de derrota
            {
                escreva("Você trabalhou demais e acabou sofrendo burnout...\n")
            }
            senao
            {
                se (dinheiro <= 0)
                {
                    escreva("O dinheiro simplesmente evaporou...\n")
                }
                senao
                {
                    se (pontuacao >= 2000) // condições para vencer
                    {
                        escreva("Seu desempenho foi absurdo de bom.\n")
                    }
                    senao
                    {
                        escreva("Jornada em construção!\n") // final neutro se não atender os requisitos acima
                    }
                }
            }

            escreva("Pontuação final: ", pontuacao) // mostra a pontuação final
        }
        senao
        {
            escreva("Opção inválida.") // caso não atenda as condições de derrota e vencer
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 209; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */