Algoritmo ForoLPI
	// Definimos las variables a usar
	// Recolección de datos
	Definir nombre,apellidos,solCas Como Caracter
	Definir estadoCivil Como Logico
	Definir horasTrabajadas Como Entero
	Definir valorHora,snp,bonoFamiliar,sueldoBruto,sueldoPagar Como Real
	// Pedimos datos del trabajador
	Escribir 'DATOS DEL TRABAJADOR'
	Escribir '========================'
	Escribir 'Nombres :'
	Leer nombre
	Escribir 'Apellidos :'
	Leer apellidos
	Escribir 'Estado Civil Soltero[0] Casado[1]'
	Leer estadoCivil
	Escribir 'DATOS DE SU TRABAJO'
	Escribir '========================'
	Escribir 'Total de horas trabajadas'
	Leer horasTrabajadas
	Escribir 'Valor por hora:'
	Leer valorHora
	// Obtenemos nuevos datos a partir de lo obternidos	
	sueldoBruto <- horasTrabajadas*valorHora
	// Obtenemos lel descuento y la bonificación 
	// se le asiga el 13  MOD  lo que es igual a la formula sueldoBruto * 13/100
	snp <- sueldoBruto*0.13
	// se le asiga el 7 MOD  lo que es igual a la formula sueldoBruto * 7/100
	bonoFamiliar <- sueldoBruto*0.07
	// Esta condición comprueba si el si el trabajador es casado = Verdadero o soltero = Falso
	Si estadoCivil=Verdadero Entonces // si es casado
		sueldoPagar <- sueldoBruto-(snp-bonoFamiliar)
		// Imprimimos la boleta de pago del trabajador	
		solCas <- 'Casado'
	SiNo
		bonoFamiliar <- 0
		sueldoPagar <- sueldoBruto-snp
		solCas <- 'Soltero'
	FinSi
	Escribir 'BOLETA DE PAGO'
	Escribir '================================'
	Escribir 'Nombre         : ',nombre
	Escribir 'Apellidos      : ',apellidos
	Escribir 'Estado Civil   : ',solCas
	Escribir '================================'
	Escribir 'Total de horas : ',horasTrabajadas
	Escribir 'Valor por hora : ',valorHora
	Escribir 'Sueldo Bruto   : S./',sueldoBruto
	Escribir 'Bon. Fam       :+ S./',bonoFamiliar
	Escribir 'Desc. SNP      :- S./',snp
	Escribir '================================'
	Escribir 'Sueldo a pagar : S./',sueldoPagar
FinAlgoritmo
