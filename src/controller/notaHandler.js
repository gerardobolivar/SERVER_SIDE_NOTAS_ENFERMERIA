const notaService = require("../services/notaService");

class notaHandler {
  async listarNotasGeneral(connection, page) {
    const notaServiceInstance = new notaService();
    const notas = notaServiceInstance.listarNotasGeneral(
      connection,
      page
    );
    return notas;
  }
  async listarNotas(connection, cedula) {
    const notaServiceInstance = new notaService();
    const notas = notaServiceInstance.listarNotas(
      connection,
      cedula
    );
    return notas;
  }
  async consultarNota(connection, cedula, idnota) {
    const notaServiceInstance = new notaService();
    const nota = notaServiceInstance.consultarNota(
      connection,
      cedula,
      idnota
    );
    return nota;
  }
  async insertarNotas(connection, nota) {
    const notaServiceInstance = new notaService();
    const mynota = notaServiceInstance.insertarNotas(
      connection,
      nota
    );
    return mynota;
  }
  async modificarNotas(connection, nota) {
    const notaServiceInstance = new notaService();
    const mynota = notaServiceInstance.modificarNotas(
      connection,
      nota
    );
    return mynota;
  }
  async eliminarNotas(connection, cedula, idnotas) {
    const notaServiceInstance = new notaService();
    const nota = notaServiceInstance.eliminarNotas(
      connection,
      cedula, 
      idnotas
    );
    return nota;
  }
}

module.exports = notaHandler;