Proceso CalculoPromedio
	// Declarar variables
	Definir alumno, materia Como Cadena;
	Definir nota, suma, prom, n, i Como Real;
	// Solicitar datos al usuario
	Escribir 'Ingrese el nombre del alumno: ';
	Leer alumno;
	Escribir 'Ingrese la materia: ';
	Leer materia;
	Escribir 'Ingrese la cantidad de notas: ';
	Leer n;
	suma <- 0;
	i <- 1;
	// Bucle para ingresar las notas
	Mientras (i<=n) Hacer
		Escribir 'Ingrese la nota ', i, ': ';
		Leer nota;
		// Verificar si la nota está en el rango válido
		Mientras nota<0 O nota>10 Hacer
			Escribir 'Nota fuera del rango válido 0 a 10';
			Escribir 'Ingrese nuevamente: ';
			Leer nota;
		FinMientras
		// Sumar la nota a la suma total
		suma <- suma+nota;
		// Incrementar el contador
		i <- i+1;
	FinMientras
	// Calcular el promedio
	prom <- suma/n;
	// Evaluar si el promedio es mayor o igual a 7
	Si prom>7 Entonces
		Escribir 'el promedio es mayor a 7';
	SiNo
		Si prom=7 Entonces
			Escribir 'el promedio es igual a 7';
		FinSi
	FinSi
	// Evaluar si el alumno aprobó o no
	Si prom>=7 Entonces
		Escribir alumno, ', ¡felicidades! Has aprobado en ', materia, ' con un promedio de ', prom;
	SiNo
		Escribir alumno, ', gracias por tu esfuerzo. Nos vemos pronto en clase. El promedio obtenido en ', materia, ' es ', prom;
	FinSi
FinProceso
