class pacienteService {
  listarPacientes(connection, page) {
    return new Promise((resolve, reject) => {
      let sql = `CALL consultarPacientes(${page})`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  consultarPaciente(connection, cedula) {
    return new Promise((resolve, reject) => {
      let sql = `CALL consultarPaciente(${cedula})`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      })
    })
  }
  insertarPaciente(connection, paciente) {
    return new Promise((resolve, reject) => {
      let sql = `CALL insertarPaciente('${paciente.persona_cedula}', '${paciente.fecha_nacimiento}', '${paciente.genero}', '${paciente.estado_civil}', '${paciente.escolaridad}', '${paciente.habita}', '${paciente.barrera_idiomatica}', '${paciente.domicilio}', '${paciente.religion}')`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      })
    })
  }
  modificarPaciente(connection, paciente) {
    return new Promise((resolve, reject) => {
      let sql = `CALL modificarPaciente('${paciente.persona_cedula}', '${paciente.fecha_nacimiento}', '${paciente.genero}', '${paciente.estado_civil}', '${paciente.escolaridad}', '${paciente.habita}', '${paciente.barrera_idiomatica}', '${paciente.domicilio}', '${paciente.religion}')`
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      })
    })
  }
  eliminarPaciente(connection, cedula) {
    return new Promise((resolve, reject) => {
      let sql = `CALL borrarPaciente(${cedula})`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      })
    })
  }
}

module.exports = pacienteService;
