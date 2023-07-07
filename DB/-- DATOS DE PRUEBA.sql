use notas_enfermeria;

CALL insertarPersona('000000001', 'Juan', 'Pérez', 'González');
CALL insertarPersona('000000002', 'María', 'López', 'Martínez');
CALL insertarPersona('000000003', 'Pedro', 'García', 'Hernández');
CALL insertarPersona('000000004', 'Ana', 'Rodríguez', 'Sánchez');
CALL insertarPersona('000000005', 'Carlos', 'Martínez', 'Gómez');
CALL insertarPersona('000000006', 'Laura', 'González', 'Pérez');
CALL insertarPersona('000000007', 'Sergio', 'Hernández', 'Ramírez');
CALL insertarPersona('000000008', 'Isabel', 'Sánchez', 'Torres');
CALL insertarPersona('000000009', 'Miguel', 'Flores', 'Vargas');
CALL insertarPersona('000000010', 'Lucía', 'Torres', 'Jiménez');
CALL insertarPersona('000000011', 'Andrés', 'Romero', 'Silva');
CALL insertarPersona('000000012', 'Carmen', 'Navarro', 'Rojas');
CALL insertarPersona('000000013', 'Javier', 'Guerrero', 'Ortega');
CALL insertarPersona('000000014', 'Patricia', 'Molina', 'Herrera');
CALL insertarPersona('000000015', 'Roberto', 'Ríos', 'Castillo');
CALL insertarPersona('000000016', 'Martha', 'Lara', 'Mendoza');
CALL insertarPersona('000000017', 'Raúl', 'Cortés', 'Delgado');
CALL insertarPersona('000000018', 'Elena', 'Acosta', 'Peña');
CALL insertarPersona('000000019', 'Francisco', 'Vega', 'Guzmán');
CALL insertarPersona('000000020', 'Adriana', 'Cruz', 'Orozco');
CALL insertarPersona('000000021', 'Mario', 'León', 'Cervantes');
CALL insertarPersona('000000022', 'Gabriela', 'Ramos', 'Velasco');
CALL insertarPersona('000000023', 'Fernando', 'Soto', 'Solís');
CALL insertarPersona('000000024', 'Luisa', 'Mendoza', 'Barrera');
CALL insertarPersona('000000025', 'Oscar', 'Vargas', 'Bautista');
CALL insertarPersona('000000026', 'Silvia', 'Herrera', 'Navarro');
CALL insertarPersona('000000027', 'Antonio', 'Jiménez', 'Cabrera');
CALL insertarPersona('000000028', 'Marcela', 'Delgado', 'Álvarez');
CALL insertarPersona('000000029', 'Gustavo', 'Guzmán', 'Santos');
CALL insertarPersona('000000030', 'Rosa', 'Orozco', 'Paredes');
CALL insertarPersona('000000031', 'Gerardo', 'Vargas', 'Fernández');

CALL insertarPersona('000000041', 'Juan', 'Pérez', 'González');
CALL insertarPersona('000000042', 'María', 'López', 'Martínez');
CALL insertarPersona('000000043', 'Pedro', 'García', 'Hernández');
CALL insertarPersona('000000044', 'Ana', 'Rodríguez', 'Sánchez');
CALL insertarPersona('000000045', 'Carlos', 'Martínez', 'Gómez');
CALL insertarPersona('000000046', 'Laura', 'González', 'Pérez');
CALL insertarPersona('000000047', 'Sergio', 'Hernández', 'Ramírez');
CALL insertarPersona('000000048', 'Isabel', 'Sánchez', 'Torres');
CALL insertarPersona('000000049', 'Miguel', 'Flores', 'Vargas');
CALL insertarPersona('000000051', 'Juan', 'Pérez', 'González');
CALL insertarPersona('000000052', 'María', 'López', 'Martínez');
CALL insertarPersona('000000053', 'Pedro', 'García', 'Hernández');
CALL insertarPersona('000000054', 'Ana', 'Rodríguez', 'Sánchez');
CALL insertarPersona('000000055', 'Carlos', 'Martínez', 'Gómez');
CALL insertarPersona('000000056', 'Laura', 'González', 'Pérez');
CALL insertarPersona('000000057', 'Sergio', 'Hernández', 'Ramírez');
CALL insertarPersona('000000058', 'Isabel', 'Sánchez', 'Torres');
CALL insertarPersona('000000059', 'Miguel', 'Flores', 'Vargas');

CALL insertarEncargado("000000031","Cargo1");
CALL insertarEncargado("000000001","Cargo1");
CALL insertarEncargado("000000002","Cargo1");
CALL insertarEncargado("000000003","Cargo1");
CALL insertarEncargado("000000004","Cargo1");


CALL insertarPaciente("000000041","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("000000042","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("000000043","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("000000044","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("000000045","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("000000046","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("000000047","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("000000048","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("000000049","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("000000052","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");
CALL insertarPaciente("000000053","1996-03-28","M","Soltero","ninguna","Habita1","No","Address line 1","Religión");

CALL insertarSignosVitales("000000052","10","80/100","80/100","50/65","95%","n%","Respons1","turno1");
CALL insertarSignosVitales("000000052","10","80/100","80/100","50/65","95%","n%","Respons1","turno1");
CALL insertarSignosVitales("000000052","10","80/100","80/100","50/65","95%","n%","Respons1","turno1");
CALL insertarSignosVitales("000000049","39","80/100","80/100","50/65","95%","n%","Respons1","turno1");
CALL insertarSignosVitales("000000049","39","80/100","80/100","50/65","95%","n%","Respons1","turno1");
CALL insertarSignosVitales("000000049","39","80/100","80/100","50/65","95%","n%","Respons1","turno1");


CALL insertarNotas("000000053","000000031","turno1","Esto es una nota de enfermería");
CALL insertarNotas("000000043","000000031","turno1","Esto es una nota de enfermería, otra más");
CALL insertarNotas("000000044","000000031","turno1","Esto es una nota de enfermería, aún más.");
CALL insertarNotas("000000045","000000031","turno1","Esto es una nota de enfermería. ¡Una nota!");

