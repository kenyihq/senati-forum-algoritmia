import java.util.Scanner;

public class Forum {
    public static void main(String[] args) {

        // Declaramos la variables
        String name, lastName, marriedOnly;
        int workHours, maritalStatus;
        Double hoursValue, snp, familyBound, grossSalary, totalSalary;
        var input = new Scanner(System.in);

        // Obtenemos datos del trabajador
        System.out.println("DATOS DEL TRABAJADOR");
        System.out.println("========================");
        System.out.print("Nombres : ");
        name = input.nextLine();
        System.out.print("Apellidos : ");
        lastName = input.nextLine();
        System.out.print("Estadp civil Soltero[0] Casado[1] : ");
        maritalStatus = input.nextInt();
        System.out.println("DATOS DE SU TRABAJO");
        System.out.println("========================");
        System.out.print("Total de horas trabajadas : ");
        workHours = input.nextInt();
        System.out.print("Valor por hora : ");
        hoursValue = input.nextDouble();

        // Obtenemos nuevos datos desde los ya obtenidos
        grossSalary = workHours * hoursValue;

        // Obtenemos el descueto y la bonificación
        // se le asigna el 13 % lo que es igual a la formula grossSalary * 13/100
        snp = grossSalary * 0.13;
        // se le asigna el 7% lo que es igual a la formula grossSalary * 7/100
        familyBound = grossSalary * 0.07;

        // Esta condición comprueba si el trabajador es casado = Verdadero o soltero = Falso
        if (maritalStatus == 1) {
            totalSalary = grossSalary - (snp - familyBound);
            marriedOnly = "Casado";
        } else {
            familyBound = 0.0;
            totalSalary = grossSalary - snp;
            marriedOnly = "Soltero";
        }

        // Impreción por consola la boleta de pago del trabajhador
        System.out.println("BOLETA DE PAGO");
        System.out.println("==========================");
        System.out.println("Nombre          : " + name);
        System.out.println("Apellidos       : " + lastName);
        System.out.println("Estado Civil    : " + marriedOnly);
        System.out.println("==========================");
        System.out.println("Total de horas  : " + workHours);
        System.out.println("Valor por hora  : " + hoursValue);
        System.out.println("Sueldo bruto    : " + grossSalary);
        System.out.println("Bon. Fam. 7%    : +" + familyBound);
        System.out.println("Desc. SNP 13%   : -" + snp);
        System.out.println("==========================");
        System.out.println("TOTAL A PAGAR   : " + totalSalary);

    }
}
