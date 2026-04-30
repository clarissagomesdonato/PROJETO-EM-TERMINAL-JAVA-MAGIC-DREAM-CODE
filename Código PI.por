programa
{
    funcao inicio()
    {
        cadeia nomejogador
        inteiro iniciar, opcao, resp
        inteiro pontuacao = 150
        inteiro felicidade = 80
        inteiro dinheiro = 200
        inteiro dia = 1

        escreva("Olá! Você está prestes a viver a vida mais divônica de todas!\n")
        escreva("Para iniciarmos, digite como gostaria de ser chamado(a): \n")
        leia(nomejogador)

        escreva("Que nome incrível, ", nomejogador, "!\n")
        escreva("Neste cenário você é uma desenvolvedora de software\n")
        escreva("Seu objetivo é manter sua felicidade e construir uma jornada de sucesso!\n")

        escreva("Digite 1 para iniciar sua jornada:\n")
        leia(iniciar)

        se (iniciar == 1)
        {
            escreva("Jornada iniciada! Boa sorte!\n")
        }
        senao
        {
            escreva("Poxa, opção inválida! Comece novamente\n")
        }

        escreva("\nSTATUS INICIAL\n")
        escreva("Pontuação: ", pontuacao, "\n")
        escreva("Felicidade: ", felicidade, "\n")
        escreva("Dinheiro: ", dinheiro, "\n")
        escreva("Dia: ", dia, "\n")

        enquanto (felicidade > 0 e dinheiro > 0 e dia <= 30)
        {
            escreva("\nEscolha uma ação:\n")
            escreva("1 - Trabalhar\n")
            escreva("2 - Estudar\n")
            escreva("3 - Relaxar\n")
            escreva("4 - Sair com os Amigos\n")
            escreva("5 - Autocuidado\n")
            escreva("6 - Cuidar do Pet\n")
            escreva("7 - Desenvolver Projeto Pessoal\n")

            leia(opcao)

            // Trabalhar
            se (opcao == 1)
            {
                escreva("Você passou o dia programando novas funcionalidades.\n")
                escreva("Seu código foi elogiado pela equipe!\n")
                escreva("+200 pontos | +150 dinheiro | -10 felicidade\n")

                pontuacao = pontuacao + 200
                dinheiro = dinheiro + 150
                felicidade = felicidade - 10

                escreva("BUG EM PRODUÇÃO!\n")
                escreva("Quer revisar o código antes de entregar?\n")
                escreva("1 - Sim\n2 - Não\n")
                leia(resp)

                se (resp == 1)
                {
                    escreva("Você revisou o código com atenção. Nenhum bug passou!\n")
                }
                senao
                {
                    escreva("Tudo certo! Nenhum bug passou.\n")
                }
            }

            // Estudar
            se (opcao == 2)
            {
                escreva("Você decidiu estudar novas tecnologias.\n")
                escreva("Muito bem! Aprendeu conceitos importantes.\n")
                escreva("+165 pontos | -5 felicidade\n")

                pontuacao = pontuacao + 165
                felicidade = felicidade - 5

                escreva("Descobriu uma nova linguagem?\n")
                escreva("1 - Sim\n2 - Não\n")
                leia(resp)

                se (resp == 1)
                {
                    escreva("Incrível! Continue assim. +100 pontos\n")
                    pontuacao = pontuacao + 100
                }
                senao
                {
                    escreva("Vamo melhorar esse estudo aí\n")
                }
            }

            // Relaxar
            se (opcao == 3)
            {
                escreva("Você relaxou na dreamhouse.\n")
                escreva("+20 felicidade | -50 dinheiro\n")

                felicidade = felicidade + 20
                dinheiro = dinheiro - 50
            }

            dia = dia + 1

            escreva("\nSTATUS ATUAL\n")
            escreva("Pontuação: ", pontuacao, "\n")
            escreva("Felicidade: ", felicidade, "\n")
            escreva("Dinheiro: ", dinheiro, "\n")
            escreva("Dia: ", dia, "\n")
        }

        escreva("\nFim da jornada!\n")
    }
}
 senao se (opcao == 4)
            {
                escreva("Você saiu com amigos.\n")
                escreva("+15 felicidade | -120 dinheiro\n")

                felicidade += 15
                dinheiro -= 120

                escreva("Conheceu alguém da área tech?\n1 - Sim\n2 - Não\n")
                leia(resp)

                se (resp == 1)
                {
                    escreva("+50 pontos\n")
                    pontuacao += 50
                }
            }
            senao se (opcao == 5)
            {
                escreva("Você fez autocuidado.\n")
                escreva("+25 felicidade | -150 dinheiro\n")

                felicidade += 25
                dinheiro -= 150
            }
            senao se (opcao == 6)
            {
                escreva("Você cuidou do seu pet.\n")
                escreva("+10 felicidade | +82 pontos\n")

                felicidade += 10
                pontuacao += 82
            }
            senao se (opcao == 7)
            {
                escreva("Você trabalhou em um projeto pessoal.\n")
                escreva("+83 pontos | +5 felicidade\n")

                pontuacao += 83
                felicidade += 5

                escreva("Seu projeto viralizou?\n1 - Sim\n2 - Não\n")
                leia(resp)

                se (resp == 1)
                {
                    escreva("+300 dinheiro | +200 pontos\n")
                    dinheiro += 300
                    pontuacao += 200
                }
            }
            senao
            {
                escreva("Opção inválida!\n")
            }

            dia += 1

            escreva("\nSTATUS ATUAL\n")
            escreva("Pontuação: ", pontuacao, "\n")
            escreva("Felicidade: ", felicidade, "\n")
            escreva("Dinheiro: ", dinheiro, "\n")
            escreva("Dia: ", dia, "\n")
        }

        escreva("\n===============================\n")
        escreva("   RESULTADO FINAL   \n")
        escreva("===============================\n")

        se (felicidade <= 0)
        {
            escreva("Burnout...\nFINAL: DERROTA\n")
        }
        senao se (dinheiro <= 0)
        {
            escreva("Sem dinheiro...\nFINAL: DERROTA\n")
        }
        senao se (pontuacao >= 2000)
        {
            escreva("PROMOVIDA!\nFINAL: SUCESSO\n")
        }
        senao se (pontuacao >= 1500)
        {
            escreva("STARTUP DE SUCESSO!\nFINAL: SUCESSO\n")
        }
        senao
        {
            escreva("Jornada em construção.\n")
        }

        escreva("Pontuação final: ", pontuacao, "\n")
        escreva("Obrigado por jogar!\n")
    }
}