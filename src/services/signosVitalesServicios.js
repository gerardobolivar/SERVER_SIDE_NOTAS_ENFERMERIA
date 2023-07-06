class signosVitalesServicio {
  listarSignosVitales(connection, page) {
    return new Promise((resolve, reject) => {
      let sql = `CALL consultarSignosVitalesT(${page})`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  consultarSignosVitales(connection, cedula) {
    return new Promise((resolve, reject) => {
      let sql = `CALL consultarSignosVitales('${cedula}')`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  consultarSignosVitalesUnico(connection, cedula, idsignos) {
    return new Promise((resolve, reject) => {
      let sql = `CALL consultarSignosVitalesUnico('${cedula}',${idsignos})`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  insertarSignosVitales(connection, signosVitales) {
    return new Promise((resolve, reject) => {
      let sql = `CALL insertarSignosVitales('${signosVitales.persona_cedula}','${signosVitales.temperatura}','${signosVitales.frecuencia_respiratoria}','${signosVitales.frecuencia_cardiaca}','${signosVitales.presion_arterial}','${signosVitales.saturacion_o}','${signosVitales.glic}','${signosVitales.respons}','${signosVitales.turno}')`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  actualizarSignosVitales(connection, signosVitales) {
    return new Promise((resolve, reject) => {
      let sql = `CALL modificarSignosVitales(${signosVitales.idsignos},'${signosVitales.persona_cedula}','${signosVitales.temperatura}','${signosVitales.frecuencia_respiratoria}','${signosVitales.frecuencia_cardiaca}','${signosVitales.presion_arterial}','${signosVitales.saturacion_o}','${signosVitales.glic}','${signosVitales.respons}','${signosVitales.turno}',${signosVitales.estado})`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
  eliminarSignosVitales(connection, cedula, idsignos) {
    return new Promise((resolve, reject) => {
      let sql = `CALL borrarSignosVitales('${cedula}',${idsignos})`;
      connection.query(sql, (err, result) => {
        if (err) reject(err);
        resolve(result);
      });
    });
  }
}

module.exports = signosVitalesServicio;
