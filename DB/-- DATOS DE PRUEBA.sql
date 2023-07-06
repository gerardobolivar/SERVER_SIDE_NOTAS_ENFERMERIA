use notas_enfermeria;

CALL insertarPersona('0000001', 'Juan', 'Pérez', 'González');
CALL insertarPersona('0000002', 'María', 'López', 'Martínez');
CALL insertarPersona('0000003', 'Pedro', 'García', 'Hernández');
CALL insertarPersona('0000004', 'Ana', 'Rodríguez', 'Sánchez');
CALL insertarPersona('0000005', 'Carlos', 'Martínez', 'Gómez');
CALL insertarPersona('0000006', 'Laura', 'González', 'Pérez');
CALL insertarPersona('0000007', 'Sergio', 'Hernández', 'Ramírez');
CALL insertarPersona('0000008', 'Isabel', 'Sánchez', 'Torres');
CALL insertarPersona('0000009', 'Miguel', 'Flores', 'Vargas');
CALL insertarPersona('0000010', 'Lucía', 'Torres', 'Jiménez');
CALL insertarPersona('0000011', 'Andrés', 'Romero', 'Silva');
CALL insertarPersona('0000012', 'Carmen', 'Navarro', 'Rojas');
CALL insertarPersona('0000013', 'Javier', 'Guerrero', 'Ortega');
CALL insertarPersona('0000014', 'Patricia', 'Molina', 'Herrera');
CALL insertarPersona('0000015', 'Roberto', 'Ríos', 'Castillo');
CALL insertarPersona('0000016', 'Martha', 'Lara', 'Mendoza');
CALL insertarPersona('0000017', 'Raúl', 'Cortés', 'Delgado');
CALL insertarPersona('0000018', 'Elena', 'Acosta', 'Peña');
CALL insertarPersona('0000019', 'Francisco', 'Vega', 'Guzmán');
CALL insertarPersona('0000020', 'Adriana', 'Cruz', 'Orozco');
CALL insertarPersona('0000021', 'Mario', 'León', 'Cervantes');
CALL insertarPersona('0000022', 'Gabriela', 'Ramos', 'Velasco');
CALL insertarPersona('0000023', 'Fernando', 'Soto', 'Solís');
CALL insertarPersona('0000024', 'Luisa', 'Mendoza', 'Barrera');
CALL insertarPersona('0000025', 'Oscar', 'Vargas', 'Bautista');
CALL insertarPersona('0000026', 'Silvia', 'Herrera', 'Navarro');
CALL insertarPersona('0000027', 'Antonio', 'Jiménez', 'Cabrera');
CALL insertarPersona('0000028', 'Marcela', 'Delgado', 'Álvarez');
CALL insertarPersona('0000029', 'Gustavo', 'Guzmán', 'Santos');
CALL insertarPersona('0000030', 'Rosa', 'Orozco', 'Paredes');
CALL insertarPersona('0000031', 'Gerardo', 'Vargas', 'Fernández');

CALL insertarPersona('0000041', 'Juan', 'Pérez', 'González');
CALL insertarPersona('0000042', 'María', 'López', 'Martínez');
CALL insertarPersona('0000043', 'Pedro', 'García', 'Hernández');
CALL insertarPersona('0000044', 'Ana', 'Rodríguez', 'Sánchez');
CALL insertarPersona('0000045', 'Carlos', 'Martínez', 'Gómez');
CALL insertarPersona('0000046', 'Laura', 'González', 'Pérez');
CALL insertarPersona('0000047', 'Sergio', 'Hernández', 'Ramírez');
CALL insertarPersona('0000048', 'Isabel', 'Sánchez', 'Torres');
CALL insertarPersona('0000049', 'Miguel', 'Flores', 'Vargas');
CALL insertarPersona('0000051', 'Juan', 'Pérez', 'González');
CALL insertarPersona('0000052', 'María', 'López', 'Martínez');
CALL insertarPersona('0000053', 'Pedro', 'García', 'Hernández');
CALL insertarPersona('0000054', 'Ana', 'Rodríguez', 'Sánchez');
CALL insertarPersona('0000055', 'Carlos', 'Martínez', 'Gómez');
CALL insertarPersona('0000056', 'Laura', 'González', 'Pérez');
CALL insertarPersona('0000057', 'Sergio', 'Hernández', 'Ramírez');
CALL insertarPersona('0000058', 'Isabel', 'Sánchez', 'Torres');
CALL insertarPersona('0000059', 'Miguel', 'Flores', 'Vargas');

CALL insertarEncargado("0000031","Cargo1");
CALL insertarEncargado("0000001","Cargo1");
CALL insertarEncargado("0000002","Cargo1");
CALL insertarEncargado("0000003","Cargo1");
CALL insertarEncargado("0000004","Cargo1");


CALL insertarPaciente("0000041","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("0000042","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("0000043","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("0000044","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("0000045","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("0000046","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("0000047","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("0000048","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("0000049","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("0000052","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("0000053","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");

CALL insertarSignosVitales("0000052","10","80/100","80/100","50/65","95%","n%","Respons1","turno1");
CALL insertarSignosVitales("0000052","10","80/100","80/100","50/65","95%","n%","Respons1","turno1");
CALL insertarSignosVitales("0000052","10","80/100","80/100","50/65","95%","n%","Respons1","turno1");
CALL insertarSignosVitales("0000049","39","80/100","80/100","50/65","95%","n%","Respons1","turno1");
CALL insertarSignosVitales("0000049","39","80/100","80/100","50/65","95%","n%","Respons1","turno1");
CALL insertarSignosVitales("0000049","39","80/100","80/100","50/65","95%","n%","Respons1","turno1");


CALL insertarNotas("0000053","0000031","turno1","Esto es una nota de enfermería");
CALL insertarNotas("0000043","0000031","turno1","Esto es una nota de enfermería, otra más");
CALL insertarNotas("0000044","0000031","turno1","Esto es una nota de enfermería, aún más.");
CALL insertarNotas("0000045","0000031","turno1","Esto es una nota de enfermería. ¡Una nota!");

call consultarPersonas(0);
