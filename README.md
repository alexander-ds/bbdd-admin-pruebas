# bbdd-prueba-ceinfes

- Este Repositorio contiene los scripts de BBDD para prueba de CEINFES para la vacante de desarrollador asi como el diagrama implementado.

- La base de datos fue desarrollada en la herramienta de Microsoft SQL Server Management Studio con el lenguaje SQL 

# Orden de creacion Tablas

- 1. Estudiante: Esta tabla o la tabla de Prueba se deben crear de primero ya que no tienen una llave foranea hacia otra tabla, en otras palabras no dependen de otra entidad 

- 2. Prueba: Esta tabla o la tabla de Estudiante se deben crear de primero ya que no tienen una llave foranea hacia otra tabla, en otras palabras no dependen de otra entidad 

- 3. Pregunta: Esta tabla se debe crear de terceras ya que solo tiene una llave foranea hacia Prueba, en otras palabras depende de la existenacia de Prueba 

- 4. Resultado: Esta tabla se debe crear de ultima ya que depende de la creacion de las anteriores tablas (Estudiante,Prueba,Pregunta) ya que tiene llaves foraneas hacia ellas 

Lo anterior se puede evidencias de mejor forma en el diagrama adjunto 

