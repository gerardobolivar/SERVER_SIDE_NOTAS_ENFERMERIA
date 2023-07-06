const signosVitalesServicio = require("../services/signosVitalesServicios");
const signosVitales = require("../model/signosVitales");

class signosVitalesHandler {
  async listarSignosVitales(connection, page) {
    const signosVitalesServicioInstance = new signosVitalesServicio();
    const signosVitales =
      await signosVitalesServicioInstance.listarSignosVitales(connection, page);
    return signosVitales;
  }
  async consultarSignosVitales(connection, cedula) {
    const signosVitalesServicioInstance = new signosVitalesServicio();
    const signosVitales =
      await signosVitalesServicioInstance.consultarSignosVitales(
        connection,
        cedula
      );
    return signosVitales;
  }
  async consultarSignosVitalesUnico(connection, cedula, idsignos) {
    const signosVitalesServicioInstance = new signosVitalesServicio();
    const signosVitales =
      await signosVitalesServicioInstance.consultarSignosVitalesUnico(
        connection,
        cedula,
        idsignos
      );
    return signosVitales;
  }
  async insertarSignosVitales(connection, signosVitales) {
    const signosVitalesServicioInstance = new signosVitalesServicio();
    const signosVitalesAgregado =
      await signosVitalesServicioInstance.insertarSignosVitales(
        connection,
        signosVitales
      );
    return signosVitalesAgregado;
  }
  async actualizarSignosVitales(connection, signosVitales) {
    const signosVitalesServicioInstance = new signosVitalesServicio();
    const signosVitalesActualizado =
      await signosVitalesServicioInstance.actualizarSignosVitales(
        connection,
        signosVitales
      );
    return signosVitalesActualizado;
  }
  async eliminarSignosVitales(connection, cedula, idsignos) {
    const signosVitalesServicioInstance = new signosVitalesServicio();
    const signosVitalesEliminado =
      await signosVitalesServicioInstance.eliminarSignosVitales(
        connection,
        cedula,
        idsignos
      );
    return signosVitalesEliminado;
  }
  


}

module.exports = signosVitalesHandler;
