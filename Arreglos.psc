Proceso Arreglos
			Definir matriz4x4 Como Entero;
			Dimension matriz4x4[4, 4];
			definir i Como Entero;
			definir j Como Entero;
			Definir sumar_diagonal Como Entero;
			sumar_diagonal <- 0;
			Definir sumar_diagonal_superior Como Entero;
			sumar_diagonal_superior <- 0;
			Definir sumar_diagonal_inferior Como Entero;
			sumar_diagonal_inferior <- 0;
				Para i <- 0 Hasta 3 Con Paso 1 Hacer
					Para j <- 0 Hasta 3 Con Paso 1 Hacer
						matriz4x4[i, j] <- azar(50); 
			FinPara
		FinPara
			Para i <- 0 Hasta 3 Con Paso 1 Hacer
				Para j <- 0 Hasta 3 Con Paso 1 Hacer
				escribir Sin Saltar matriz4x4[i, j], "   "; 
			FinPara
				Escribir "";
			FinPara
					Para i <- 0 Hasta 3 Con Paso 1 Hacer
						Para j <- 0 Hasta 3 Con Paso 1 Hacer
							Si (i == j) Entonces
								sumar_diagonal <- sumar_diagonal + matriz4x4[i, j];
								SiNo
									Si (j > i ) Entonces
										sumar_diagonal_superior <- sumar_diagonal_superior + matriz4x4[i, j];
									SiNo
										Si (j < i) Entonces
											sumar_diagonal_inferior <- sumar_diagonal_inferior + matriz4x4[i, j];
										FinSi
								FinSi
							FinSi
						FinPara
					FinPara
						Escribir "El total de la sumatoria de la diagonal es : ", sumar_diagonal;
							Escribir "El total de la sumatoria de la diagonal superior es : ", sumar_diagonal_superior;
								Escribir "El total de la sumatoria de la diagonal inferior es : ", sumar_diagonal_inferior;
									Si (sumar_diagonal_superior + sumar_diagonal_inferior < sumar_diagonal) Entonces
										Escribir "La sumatoria total de la línea diagonal superior más la línea inferior es menor";
									SiNo
				Escribir "por lo tanto la sumatoria total de la línea diagonal superior más la línea inferior no es menor a la diagonal principal";
			FinSi
FinProceso
