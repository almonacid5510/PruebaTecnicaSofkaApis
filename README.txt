PROYECTO DE AUTOMATIZACIÓN - API PETSTORE
Candidato: Juan Almonacid

DESCRIPCIÓN:
Este proyecto contiene pruebas automatizadas para el ciclo de vida de usuarios
en la API de PetStore (https://petstore.swagger.io/). Se utilizó Karate DSL
por su facilidad para el manejo de JSON y legibilidad BDD.

REQUISITOS:
- Java JDK 17
- Maven

EJECUCIÓN:
1. Clonar el repositorio.
2. Desde la raíz del proyecto, ejecutar en terminal: mvn test
3. Para ver el reporte visual, abrir: target/karate-reports/karate-summary.html

ESTRUCTURA:
- src/test/java/users/user-test.feature: Escenarios de prueba.
- src/test/java/users/TestRunner.java: Clase para ejecutar las pruebas con JUnit.