================================================================
  PRUEBA TÉCNICA - AUTOMATIZACIÓN API REST PETSTORE
  Candidato : Juan Almonacid
  Empresa   : Sofka Technologies
  Fecha     : Abril 2026
================================================================
 
DESCRIPCIÓN
-----------
Automatización de pruebas funcionales sobre la API REST de PetStore
(https://petstore.swagger.io/), implementada con Karate Framework.
 
El flujo automatizado cubre los siguientes casos de prueba:
  1. Crear un usuario
  2. Buscar el usuario creado
  3. Actualizar el nombre y correo del usuario
  4. Buscar el usuario actualizado
  5. Eliminar el usuario
 
 
TECNOLOGÍAS Y HERRAMIENTAS
---------------------------
  - Lenguaje        : Java 17
  - Framework       : Karate Framework
  - Gestor          : Apache Maven
  - Reporte         : Karate HTML Report (generado automáticamente)
  - API bajo prueba : https://petstore.swagger.io/v2
PRE-REQUISITOS
--------------
Antes de ejecutar el proyecto asegúrese de tener instalado:
 
  1. Java 17 o superior
     Verificar: java -version
 
  2. Apache Maven 3.8 o superior
     Verificar: mvn -version
     Descarga : https://maven.apache.org/download.cgi
 
  3. Conexión a internet activa
     Las pruebas consumen la API pública de PetStore en:
     https://petstore.swagger.io/v2
CONFIGURACIÓN DEL PROYECTO
---------------------------
  1. Clone el repositorio:
       git clone https://github.com/almonacid5510/PruebaTecnicaSofkaApis.git
 
  2. Ingrese a la carpeta del proyecto:
       cd PruebaTecnicaSofkaApis
 
  3. No requiere configuración adicional. Karate gestiona las
     dependencias automáticamente a través de Maven.
 
 
INSTRUCCIONES DE EJECUCIÓN
----------------------------
Desde IntelliJ IDEA:
 
  1. Abra el proyecto en IntelliJ IDEA
  2. En el panel lateral derecho abra la pestaña "Maven"
  3. Expanda "Lifecycle"
  4. Haga doble clic en "verify"
VISUALIZACIÓN DEL REPORTE
---------------------------
Una vez finalizada la ejecución, abra el reporte en su navegador:
 
  target/karate-reports/karate-summary.html
 
El reporte incluye:
  - Resumen general de escenarios ejecutados (passed / failed)
  - Detalle de cada request y response HTTP
  - Validaciones (assertions) realizadas en cada paso
  - Tiempo de respuesta de cada llamada
 
 
REPOSITORIO
-----------
  https://github.com/almonacid5510/PruebaTecnicaSofkaApis
 
================================================================
