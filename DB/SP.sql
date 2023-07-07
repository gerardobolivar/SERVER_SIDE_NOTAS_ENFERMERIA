-- ------------------------------------
-- NAME: STORED PROCEDURES
-- DATA BASE: NOTAS_ENFERMERIA
-- ------------------------------------
use notas_enfermeria;
-- ---------------------------------------------------------------------
-- TABLA PERSONA CRUD
-- ---------------------------------------------------------------------
-- CREATE
DELIMITER //
DROP PROCEDURE IF EXISTS insertarPersona//
CREATE PROCEDURE insertarPersona(
	IN cedula VARCHAR(15),
	IN nombre VARCHAR(45),
    IN primer_apellido VARCHAR(45),
    IN segundo_apellido VARCHAR(45)
    )
	BEGIN
		INSERT INTO persona VALUES(cedula,nombre,primer_apellido,segundo_apellido,curdate(),curtime(),1);
	END //
    DELIMITER ;

-- CONSULTAR PERSONAS
DELIMITER //
DROP PROCEDURE IF EXISTS consultarPersonas//
CREATE PROCEDURE consultarPersonas( -- -- Para no solicitar datos de más realizo un paginación con el método offset
	IN mypage INT -- -- Se recibe el número de página.
)
BEGIN
	DECLARE myoffset INT DEFAULT 0; -- Cantidad de resgistros a saltar
    SET myoffset = mypage * 10; -- Se setea el número de página deseado multiplicado por 10
	SELECT * FROM persona
    WHERE persona.estado = 1
    ORDER BY nombre, cedula
    LIMIT 10 -- Cada página será de 10 registros
    OFFSET myoffset;
END //
DELIMITER ;

-- CONSULTAR PERSONA
DELIMITER //
DROP PROCEDURE IF EXISTS consultarPersona//
CREATE PROCEDURE consultarPersona(cedula VARCHAR(15))
BEGIN
	SELECT * FROM persona WHERE persona.cedula = cedula AND persona.estado = 1;
END //
DELIMITER ;

-- MODIFICAR
DELIMITER //
DROP PROCEDURE IF EXISTS modificarPersona//
CREATE PROCEDURE modificarPersona(
	IN cedula VARCHAR(15),
	IN nombre VARCHAR(45),
    IN primer_apellido VARCHAR(45),
    IN segundo_apellido VARCHAR(45),
    IN estado BIT 
    )
	BEGIN
		UPDATE persona 
        SET persona.nombre = nombre,
            persona.primer_apellido = primer_apellido,
            persona.segundo_apellido = segundo_apellido,
            persona.fecha_modificado = CURTIME(),
            persona.estado = estado
		WHERE persona.cedula = cedula;
	END//
DELIMITER ;

-- DELETE
DELIMITER //
DROP PROCEDURE IF EXISTS borrarPersona//
CREATE PROCEDURE borrarPersona(
	IN cedula VARCHAR(15)
	)
    BEGIN
		DELETE FROM persona 
        WHERE persona.cedula = cedula;
	END//
DELIMITER ;

-- ---------------------------------------------------------------------
-- TABLA ENCARGADO CRUD
-- ---------------------------------------------------------------------
-- INSERTAR
DELIMITER //
DROP PROCEDURE IF EXISTS insertarEncargado//
CREATE PROCEDURE insertarEncargado(
	IN cedula VARCHAR(15),
	IN cargo VARCHAR(45)
    )
	BEGIN
		INSERT INTO encargado VALUES(cedula,cargo);
	END //
DELIMITER ;

-- CONSULTAR ENCARGADOS
DELIMITER //
DROP PROCEDURE IF EXISTS consultarEncargados//
CREATE PROCEDURE consultarEncargados( 
	IN mypage INT 
)
BEGIN
	DECLARE myoffset INT DEFAULT 0;
    SET myoffset = mypage * 10;
	SELECT * FROM encargado
    INNER JOIN persona
    ON encargado.persona_cedula = persona.cedula
    WHERE persona.estado = 1
    ORDER BY cargo, persona_cedula
    LIMIT 10
    OFFSET myoffset;
END //
DELIMITER ;

-- CONSULTAR ENCARGADO
DELIMITER //
DROP PROCEDURE IF EXISTS consultarEncargado//
CREATE PROCEDURE consultarEncargado(cedula VARCHAR(15))
BEGIN
	SELECT * FROM encargado 
    INNER JOIN persona
    on encargado.persona_cedula = persona.cedula
    WHERE encargado.persona_cedula = cedula AND persona.estado = 1;
END //
DELIMITER ;


-- MODIFICAR
DELIMITER //
DROP PROCEDURE IF EXISTS modificarEncargado//
CREATE PROCEDURE modificarEncargado(
	IN cedula VARCHAR(45),
	IN cargo VARCHAR(45)
    )
	BEGIN
		UPDATE encargado 
        SET encargado.cargo = cargo
		WHERE encargado.persona_cedula = cedula;
        UPDATE persona
        SET persona.fecha_modificado = CURTIME()
        WHERE persona.cedula = cedula;
	END//
DELIMITER ;

-- DELETE
DELIMITER //
DROP PROCEDURE IF EXISTS borrarEncargado//
CREATE PROCEDURE borrarEncargado(
	IN cedula VARCHAR(15)
	)
    BEGIN
		UPDATE persona
        SET persona.estado = 0
        WHERE persona.cedula = cedula;
	END//
DELIMITER ;

-- ---------------------------------------------------------------------
-- TABLA PACIENTE CRUD
-- ---------------------------------------------------------------------
-- CREATE
DELIMITER //
DROP PROCEDURE IF EXISTS insertarPaciente//
CREATE PROCEDURE insertarPaciente(
	IN persona_cedula VARCHAR(15),
	IN fecha_nacimiento DATE,
    IN genero VARCHAR(10),
    IN estado_civil VARCHAR(15),
    IN escolaridad VARCHAR(20),
    IN habita VARCHAR(45),
    IN barrera_idiomatica VARCHAR(45),
    IN domicilio VARCHAR(100),
    IN religion VARCHAR(45)
    
    )
	BEGIN
		INSERT INTO paciente VALUES(persona_cedula,
								   fecha_nacimiento,
                                   genero,
                                   estado_civil,
                                   escolaridad,
                                   habita,
                                   barrera_idiomatica,
                                   domicilio,
                                   religion);
	END //
    DELIMITER ;
    
-- CONSULTAR PACIENTES
DELIMITER //
DROP PROCEDURE IF EXISTS consultarPacientes//
CREATE PROCEDURE consultarPacientes(
	IN mypage INT 
)
BEGIN
	DECLARE myoffset INT DEFAULT 0; 
    SET myoffset = mypage * 10; 
	SELECT persona.cedula,
		persona.nombre,
        persona.primer_apellido,
        persona.segundo_apellido,
        paciente.fecha_nacimiento,
        paciente.genero,
        paciente.estado_civil,
        paciente.escolaridad,
        paciente.habita,
        paciente.barrera_idiomatica,
        paciente.domicilio,
        paciente.religion
	FROM 
		persona
    INNER JOIN paciente ON persona.cedula = paciente.persona_cedula
    WHERE persona.estado = 1
    ORDER BY persona.nombre, persona.cedula
    LIMIT 10
    OFFSET myoffset;
END //
DELIMITER ;

-- CONSULTAR PACIENTE
DELIMITER //
DROP PROCEDURE IF EXISTS consultarPaciente//
CREATE PROCEDURE consultarPaciente(cedula VARCHAR(15))
BEGIN
	SELECT * FROM paciente
    INNER JOIN persona
    ON paciente.persona_cedula = persona.cedula
    WHERE paciente.persona_cedula = cedula AND persona.estado = 1;
END //
DELIMITER ;

-- MODIFICAR PACIENTE
DELIMITER //
DROP PROCEDURE IF EXISTS modificarPaciente//
CREATE PROCEDURE modificarPaciente(
	IN persona_cedula VARCHAR(15),
	IN fecha_nacimiento DATE,
    IN genero VARCHAR(10),
    IN estado_civil VARCHAR(15),
    IN escolaridad VARCHAR(20),
    IN habita VARCHAR(45),
    IN barrera_idiomatica VARCHAR(45),
    IN domicilio VARCHAR(100),
    IN religion VARCHAR(45)
    )
	BEGIN
		UPDATE paciente 
        SET paciente.fecha_nacimiento = fecha_nacimiento,
            paciente.genero = genero,
            paciente.estado_civil = estado_civil,
            paciente.escolaridad = escolaridad,
            paciente.habita = habita,
            paciente.barrera_idiomatica = barrera_idiomatica,
            paciente.domicilio = domicilio,
            paciente.religion = religion
		WHERE paciente.persona_cedula = persona_cedula;
        UPDATE persona
        SET persona.fecha_modificado = CURTIME()
        WHERE persona.cedula = persona_cedula;
	END//
DELIMITER ;

-- DELETE PACIENTE
DELIMITER //
DROP PROCEDURE IF EXISTS borrarPaciente//
CREATE PROCEDURE borrarPaciente(
	IN cedula VARCHAR(15)
	)
    BEGIN
        UPDATE persona
        SET persona.estado = 0
        WHERE persona.cedula = cedula;
	END//
DELIMITER ;

-- ---------------------------------------------------------------------
-- TABLA SIGNOS VITALES CRUD
-- ---------------------------------------------------------------------
-- CREATE
DELIMITER //
DROP PROCEDURE IF EXISTS insertarSignosVitales//
CREATE PROCEDURE insertarSignosVitales(
	IN persona_cedula VARCHAR(15),
    IN temperatura VARCHAR(45),
    IN frecuencia_respiratoria VARCHAR(45),
    IN frecuencia_cardiaca VARCHAR(45),
    IN presion_arterial VARCHAR(45),
    IN saturacion_o VARCHAR(45),
    IN glic VARCHAR(45),
    IN respons VARCHAR(45),
    IN turno VARCHAR(45)
    )
	BEGIN
		INSERT INTO signos_vitales VALUES(
			0,
            persona_cedula,
			temperatura,
			frecuencia_respiratoria,
			frecuencia_cardiaca,
			presion_arterial,
			saturacion_o,
			glic,
			respons,
			turno,
			CURDATE(),
			CURTIME(),
            1)
            ;
	END //
    DELIMITER ;
    

-- CONSULTAR SIGNOS VITALES TODOS
DELIMITER //
DROP PROCEDURE IF EXISTS consultarSignosVitalesT//
CREATE PROCEDURE consultarSignosVitalesT(
	IN mypage INT 
)
BEGIN
	DECLARE myoffset INT DEFAULT 0; 
    SET myoffset = mypage * 20; 
	SELECT signos_vitales.persona_cedula,
			signos_vitales.temperatura,
			signos_vitales.frecuencia_respiratoria,
			signos_vitales.frecuencia_cardiaca,
			signos_vitales.presion_arterial,
			signos_vitales.saturacion_o,
			signos_vitales.glic,
			signos_vitales.respons,
			signos_vitales.turno,
			signos_vitales.fecha_creado,
			signos_vitales.fecha_modificado
	FROM 
		signos_vitales
	WHERE signos_vitales.estado = 1
    LIMIT 20
    OFFSET myoffset;
END //
DELIMITER ;

-- CONSULTAR SIGNOS VITALES
DELIMITER //
DROP PROCEDURE IF EXISTS consultarSignosVitales//
CREATE PROCEDURE consultarSignosVitales(cedula VARCHAR(15))
BEGIN
	SELECT * FROM signos_vitales WHERE signos_vitales.persona_cedula = cedula;
END //
DELIMITER ;

-- CONSULTAR SIGNOS VITALES UNICO
DELIMITER //
DROP PROCEDURE IF EXISTS consultarSignosVitalesUnico//
CREATE PROCEDURE consultarSignosVitalesUnico(cedula VARCHAR(15), idsignos INT)
BEGIN
	SELECT * FROM signos_vitales 
    WHERE signos_vitales.persona_cedula = cedula AND signos_vitales.idsignos = idsignos;
END //
DELIMITER ;

-- MODIFICAR SIGNOS VITALES
DELIMITER //
DROP PROCEDURE IF EXISTS modificarSignosVitales//
CREATE PROCEDURE modificarSignosVitales(
	IN idsignos INT,
	IN persona_cedula VARCHAR(15),
    IN temperatura VARCHAR(45),
    IN frecuencia_respiratoria VARCHAR(45),
    IN frecuencia_cardiaca VARCHAR(45),
    IN presion_arterial VARCHAR(45),
    IN saturacion_o VARCHAR(45),
    IN glic VARCHAR(45),
    IN respons VARCHAR(45),
    IN turno VARCHAR(45),
    IN estado BIT
    )
	BEGIN
		UPDATE signos_vitales
        SET signos_vitales.persona_cedula = persona_cedula,
			signos_vitales.temperatura = temperatura,
			signos_vitales.frecuencia_respiratoria = frecuencia_respiratoria,
			signos_vitales.frecuencia_cardiaca = frecuencia_cardiaca,
			signos_vitales.presion_arterial = presion_arterial,
			signos_vitales.saturacion_o = saturacion_o,
			signos_vitales.glic = glic,
			signos_vitales.respons = respons,
			signos_vitales.turno = turno,
			signos_vitales.fecha_creado = CURDATE(),
			signos_vitales.fecha_modificado = CURTIME(),
            signos_vitales.estado = estado
		WHERE signos_vitales.persona_cedula = persona_cedula and signos_vitales.idsignos = idsignos;
	END//
DELIMITER ;

-- DELETE SIGNOS VITALES
DELIMITER //
DROP PROCEDURE IF EXISTS borrarSignosVitales//
CREATE PROCEDURE borrarSignosVitales(
	IN cedula VARCHAR(15),
    IN idsignos INT
	)
    BEGIN
		UPDATE signos_vitales
        SET signos_vitales.estado = 0
        WHERE signos_vitales.persona_cedula = cedula AND signos_vitales.idsignos = idsignos;
	END//
DELIMITER ;

-- ---------------------------------------------------------------------
-- TABLA NOTAS CRUD
-- ---------------------------------------------------------------------
-- CREATE
DELIMITER //
DROP PROCEDURE IF EXISTS insertarNotas//
CREATE PROCEDURE insertarNotas(
	IN paciente_persona_cedula VARCHAR(15),
    IN encargado_persona_cedula VARCHAR(15),
    IN turno VARCHAR(45),
    IN nota TEXT
    )
	BEGIN
		INSERT INTO notas VALUES(
			0,
            paciente_persona_cedula,
            encargado_persona_cedula,
            turno,
            CURDATE(),
            CURTIME(),
            nota,
            1);
	END //
    DELIMITER ;
    
-- CONSULTAR NOTAS
DELIMITER //
DROP PROCEDURE IF EXISTS consultarNotasGeneral//
CREATE PROCEDURE consultarNotasGeneral(
	IN mypage INT 
)
BEGIN
	DECLARE myoffset INT DEFAULT 0; 
    SET myoffset = mypage * 15; 
	SELECT notas.idnotas,
		notas.paciente_persona_cedula,
        persona.nombre,
        persona.primer_apellido,
        persona.segundo_apellido,
        notas.fecha_creado
	FROM 
		notas 
        INNER JOIN persona ON notas.paciente_persona_cedula = persona.cedula
        WHERE notas.estado = 1
        ORDER BY persona.nombre, persona.cedula
    LIMIT 15
    OFFSET myoffset;
END //
DELIMITER ;

-- CONSULTAR NOTAS
DELIMITER //
DROP PROCEDURE IF EXISTS consultarNotas//
CREATE PROCEDURE consultarNotas(cedula VARCHAR(15))
BEGIN
	SELECT * FROM notas WHERE notas.paciente_persona_cedula = cedula AND notas.estado = 1;
END //
DELIMITER ;

-- CONSULTAR NOTAS
DELIMITER //
DROP PROCEDURE IF EXISTS consultarNota//
CREATE PROCEDURE consultarNota(cedula VARCHAR(15), idnota INT)
BEGIN
	SELECT * FROM notas WHERE notas.paciente_persona_cedula = cedula AND notas.idnotas AND notas.estado = 1;
END //
DELIMITER ;

-- MODIFICAR NOTAS
DELIMITER //
DROP PROCEDURE IF EXISTS modificarNotas//
CREATE PROCEDURE modificarNotas(
	IN idnotas INT,
	IN paciente_persona_cedula VARCHAR(15),
    IN encargado_persona_cedula VARCHAR(15),
    IN turno VARCHAR(45),
    IN nota TEXT,
    IN estado BIT
    )
	BEGIN
		UPDATE notas 
        SET notas.encargado_persona_cedula = encargado_persona_cedula,
			notas.turno = turno,
            notas.nota = nota,
			notas.fecha_modificado = CURTIME(),
            notas.estado = estado
		WHERE notas.paciente_persona_cedula = paciente_persona_cedula AND notas.idnotas = idnotas;
	END//
DELIMITER ;

DELIMITER //
DROP PROCEDURE IF EXISTS borrarNotas//
CREATE PROCEDURE borrarNotas(
	IN cedula VARCHAR(15),
    IN idnotas INT
	)
    BEGIN
		UPDATE notas
        SET notas.estado = 0
        WHERE notas.idnotas = idnotas AND notas.paciente_persona_cedula = cedula;
	END//
DELIMITER ;

