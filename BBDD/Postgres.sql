		CREATE TABLE Estudiante (ID int PRIMARY KEY,  Nombres varchar(30), Grado char(2) , Salon char(10));
		CREATE TABLE Prueba (ID int PRIMARY KEY,  Nombre varchar(30), Anio date );
		CREATE TABLE Pregunta (ID int PRIMARY KEY,  Respuesta varchar(30), Orden char(2) , IDPrueba int);
		CREATE TABLE Resultado (ID int PRIMARY KEY,  IDEstudiante int, IDPrueba int , IDPregunta int);

		1 - 'Estudiante y prueba no tienen llaves foraneas'
		
		2 - 'Pregunta tiene una llave foranea de prueba'
			ALTER TABLE Pregunta ADD CONSTRAINT fk_prueba FOREIGN KEY (IDPrueba) REFERENCES Prueba(ID);
			
		3 - 'Resultado tiene llaves foraneas de Estudiante-Prueba-pregunta'
			ALTER TABLE Resultado ADD CONSTRAINT fk_prueba_resultado FOREIGN KEY (IDPrueba) REFERENCES Prueba(ID);
			ALTER TABLE Resultado ADD CONSTRAINT fk_pregunta FOREIGN KEY (IDPregunta) REFERENCES Pregunta(ID);
			ALTER TABLE Resultado ADD CONSTRAINT fk_estudiante FOREIGN KEY (IDEstudiante) REFERENCES Estudiante(ID);
			
		|Estudiante|----->|Resultado|<-----|Pregunta|
		           						^              ^
				          				|              |
				          				|-----------|Prueba|


