class notaService {
  listarNotasGeneral(connection, page) {
    return new Promise((resolve, reject) => {
      let sql = `CALL consultarNotasGeneral(${page})`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  listarNotas(connection, cedula) {
    return new Promise((resolve, reject) => {
      let sql = `CALL consultarNotas('${cedula}')`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  consultarNota(connection, cedula, idnota) {
    return new Promise((resolve, reject) => {
      let sql = `CALL consultarNota("${cedula}", ${idnota})`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  insertarNotas(connection, nota) {
    return new Promise((resolve, reject) => {
      let sql = `CALL insertarNotas('${nota.paciente_persona_cedula}', ${nota.encargado_id_encargado}, '${nota.turno}', '${nota.nota}')`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  modificarNotas(connection, nota) {
    return new Promise((resolve, reject) => {
      let sql = `CALL modificarNotas('${nota.idnotas}', '${nota.paciente_persona_cedula}', ${nota.encargado_id_encargado}, '${nota.turno}', '${nota.nota}', ${nota.estado})`
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  eliminarNotas(connection, cedula, idnotas) {
    return new Promise((resolve, reject) => {
      let sql = `CALL borrarNotas('${cedula}', ${idnotas})`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
}

module.exports = notaService;