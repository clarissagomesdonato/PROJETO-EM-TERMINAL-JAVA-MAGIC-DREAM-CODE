import java.util.Random;
import java.util.Scanner;

public class JogoVida {

    static int felicidade = 50;
    static int dinheiro = 500;
    static int pontuacao = 0;

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int opcao;

        do {
            System.out.println("\n===== MENU =====");
            System.out.println("5 - Autocuidado");
            System.out.println("6 - Cuidar do Pet");
            System.out.println("7 - Projeto Pessoal");
            System.out.println("8 - Avançar Tempo");
            System.out.println("0 - Sair");
            System.out.print("Escolha: ");

            opcao = sc.nextInt();

            switch (opcao) {
                case 5:
                    autocuidado();
                    break;
                case 6:
                    cuidarPet();
                    break;
                case 7:
                    projetoPessoal();
                    break;
                case 8:
                    avancarTempo();
                    break;
                case 0:
                    System.out.println("Saindo...");
                    break;
                default:
                    System.out.println("Opção inválida!");
            }

            mostrarStatus();

        } while (opcao != 0);

        sc.close();
    }

    // 5 - AUTOCUIDADO
    public static void autocuidado() {
        System.out.println("\nVocê tirou um tempo para cuidar de si mesma.");
        System.out.println("Saúde mental também é importante.");

        felicidade += 25;
        dinheiro -= 150;
    }

    // 6 - CUIDAR DO PET
    public static void cuidarPet() {
        System.out.println("\nSeu pet ficou muito feliz com sua atenção.");

        felicidade += 10;
        pontuacao += 82;
    }

    // 7 - PROJETO PESSOAL
    public static void projetoPessoal() {
        System.out.println("\nVocê trabalhou em um projeto pessoal de programação.");

        pontuacao += 83;
        felicidade += 5;

        // Evento aleatório
        Random rand = new Random();
        boolean viralizou = rand.nextBoolean();

        if (viralizou) {
            System.out.println("🚀 Seu projeto viralizou!");
            dinheiro += 300;
            pontuacao += 200;
        }
    }

    // 8 - AVANÇO DO TEMPO
    public static void avancarTempo() {
        System.out.println("\nO tempo passou...");

        felicidade -= 5;
        dinheiro -= 50;

        System.out.println("Algumas necessidades precisam de atenção!");
    }

    // Mostrar status do jogador
    public static void mostrarStatus() {
        System.out.println("\n--- STATUS ---");
        System.out.println("Felicidade: " + felicidade);
        System.out.println("Dinheiro: " + dinheiro);
        System.out.println("Pontuação: " + pontuacao);
    }
}
