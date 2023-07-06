class personaService {
  listarPersonas(connection, page) {
    return new Promise((resolve, reject) => {
      let sql = `CALL consultarPersonas(${page})`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  consultarPersona(connection, cedula) {
    return new Promise((resolve, reject) => {
      let sql = `CALL consultarPersona('${cedula}')`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  insertarPersona(connection, persona) {
    return new Promise((resolve, reject) => {
      let sql = `CALL insertarPersona('${persona.cedula}', '${persona.nombre}', '${persona.primer_apellido}', '${persona.segundo_apellido}')`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  actualizarPersona(connection, persona) {
    return new Promise((resolve, reject) => {
      console.log(persona.estado);
      let sql = `CALL modificarPersona('${persona.cedula}', '${persona.nombre}', '${persona.primer_apellido}', '${persona.segundo_apellido}',${persona.estado})`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  eliminarPersona(connection, cedula) {
    return new Promise((resolve, reject) => {
      let sql = `CALL borrarPersona('${cedula}')`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
}

module.exports = personaService;
