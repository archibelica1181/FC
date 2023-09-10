Algoritmo EnviosDeMercaderia
	
    Definir nombre, apellido, dni, tipoEnvio, cantidad, ciudad Como Entero
    Definir costoEnvio Como Real
	
    Escribir "Bienvenido al sistema de env�os de mercader�a del expreso Brio"
    Escribir "Por favor, ingrese sus datos:"
    
    Escribir "Nombre:"
    Leer nom
	
    Escribir "Apellido:"
    Leer apell
	
    Escribir "N�mero de DNI:"
    Leer dni
	
    Escribir "�Qu� desea enviar? (1: Cajas, 2: Pallets)"
    Leer tipoEnvio
	
    Escribir "Ingrese la cantidad a enviar:"
    Leer cantidad
	
    Si cantidad > 40 Entonces
        Escribir "M�s de 40 cajas ser�n tomadas como pallets."
        Escribir "�Cu�ntos pallets desea enviar?"
        Leer cantidad
        tipoEnvio <- 2
    FinSi
	
    Si tipoEnvio = 1 Entonces
        // Env�o de cajas
        Si cantidad <= 5 Entonces
            // Costo por caja (1 a 5)
            costoEnvio <- cantidad * 1800
        Sino 
            Si cantidad <= 10 Entonces
                // Costo por caja (6 a 10)
                costoEnvio <- cantidad * 1600
            Sino 
                Si cantidad <= 15 Entonces
                    // Costo por caja (11 a 15)
                    costoEnvio <- cantidad * 1500
                Sino 
                    Si cantidad <= 20 Entonces
                        // Costo por caja (16 a 20)
                        costoEnvio <- cantidad * 1450
                    Sino 
                        Si cantidad <= 30 Entonces
                            // Costo por caja (21 a 30)
                            costoEnvio <- cantidad * 1410
                        Sino 
                            Si cantidad <= 40 Entonces
                                // Costo por caja (31 a 40)
                                costoEnvio <- cantidad * 1000
                            Sino
                                Escribir "No podemos enviar m�s de 40 cajas a la vez."
                            FinSi
                        FinSi
                    FinSi
                FinSi
            FinSi
        FinSi
    Sino 
        Si tipoEnvio = 2 Entonces
            // Env�o de pallets
            Si cantidad <= 40 Entonces
                Escribir "Ingrese la ciudad de destino (1: Buenos Aires, 2: Rosario, 3: C�rdoba, 4: Mendoza):"
                Leer ciudad
				
                Segun ciudad Hacer
                    Caso 1:
                        costoEnvio <- cantidad * 58000  // Buenos Aires
                    Caso 2:
                        costoEnvio <- cantidad * 56000  // Rosario
                    Caso 3:
                        costoEnvio <- cantidad * 55000  // C�rdoba
                    Caso 4:
                        costoEnvio <- cantidad * 52000  // Mendoza
                    OtroCaso:
                        Escribir "Ciudad no v�lida."
                FinSegun
            Sino
                Escribir "No podemos enviar m�s de 40 pallets a la vez."
            FinSi
        Sino
            Escribir "Tipo de env�o no v�lido."
        FinSi
    FinSi
	
    Escribir "El costo de env�o es:", costoEnvio
	Escribir "Gracias por enviar por Expreso Brio"

FinAlgoritmo

