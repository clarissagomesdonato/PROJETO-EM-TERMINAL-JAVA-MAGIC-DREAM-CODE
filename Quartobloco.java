// BLOCO FINAL: avanço do tempo + finais

        while (true) {

            // avanço do tempo
            dia++;

            // VITÓRIA

            if (pontuacao >= 2000) {
                System.out.println("Parabéns!");
                System.out.println("Seu desempenho foi incrível.");
                System.out.println("Você foi promovida a Desenvolvedora Sênior!");
                System.out.println("FINAL: SUCESSO PROFISSIONAL");
                break;

            } else if (pontuacao >= 1500 && projetoPessoal >= 5) {
                System.out.println("Seu projeto pessoal se tornou uma startup!");
                System.out.println("Você se tornou uma empreeendedora tech.");
                System.out.println("FINAL: STARTUP DE SUCESSO");
                break;

            } else if (dia == 30 && felicidade >= 90 && dinheiro >= 500) {
                System.out.println("Você contruiu uma carreira saudável com equílibrio.");
                System.out.println("FINAL: EQUILÍBRIO");
                break;

            }

            // DERROTA

            else if (felicidade <= 0) {
                System.out.println("Você trabalhou demais e sofreu burnout.");
                System.out.println("FINAL: ESGOTAMENTO");
                break;

            } else if (dinheiro <= 0) {
                System.out.println("Você ficou sem dinheiro.");
                System.out.println("FINAL: DIFICULDADES FINANCEIRAS");
                break;
            }
            break;
        }


                // FIM DE JOGO
                System.out.println("Obrigado por jogar Magic Dream Code!");

                sc.close();

            }
        }






