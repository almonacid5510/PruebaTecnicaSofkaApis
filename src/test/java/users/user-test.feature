Feature: Pruebas de API PetStore - Gestion de Usuarios

  Background:
    # Definimos la URL base y el cuerpo inicial del usuario
    * url 'https://petstore.swagger.io/v2'
    * def userPayload =
    """
    {
      "id": 10101,
      "username": "juan_qa_automation",
      "firstName": "Juan",
      "lastName": "Almonacid",
      "email": "juan.qa@example.com",
      "password": "password123",
      "phone": "3001234567",
      "userStatus": 1
    }
    """

  Scenario: Realizar el ciclo de vida completo de un usuario (CRUD)

    # 1. Crear un usuario
    Given path 'user'
    And request userPayload
    When method post
    Then status 200
    And match response.message == '10101'

    # 2. Buscar el usuario creado
    Given path 'user', userPayload.username
    When method get
    Then status 200
    And match response.username == userPayload.username

    # 3. Actualizar el nombre y el correo del usuario
    # Modificamos los valores en la variable local antes de enviarla
    * set userPayload.firstName = 'Juan Alberto'
    * set userPayload.email = 'juan.actualizado@mail.com'

    Given path 'user', userPayload.username
    And request userPayload
    When method put
    Then status 200

    # 4. Buscar el usuario actualizado para verificar cambios
    Given path 'user', userPayload.username
    When method get
    Then status 200
    And match response.firstName == 'Juan Alberto'
    And match response.email == 'juan.actualizado@mail.com'

    # 5. Eliminar el usuario
    Given path 'user', userPayload.username
    When method delete
    Then status 200
    And match response.message == userPayload.username

    # Verificación extra: Intentar buscar el usuario eliminado
    Given path 'user', userPayload.username
    When method get
    Then status 404