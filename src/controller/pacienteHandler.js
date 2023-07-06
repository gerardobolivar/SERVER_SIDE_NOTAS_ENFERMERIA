const persona = require("../model/persona");
const pacienteService = require("../services/pacienteService");

class pacienteHandler {
  async listarPacientes(connection, page) {
    const pacienteServiceInstance = new pacienteService();
    const pacientes = await pacienteServiceInstance.listarPacientes(
      connection,
      page
    );
    return pacientes;
  }
  async consultarPaciente(connection, cedula) {
    const pacienteServiceInstance = new pacienteService();
    const paciente = await pacienteServiceInstance.consultarPaciente(
      connection,
      cedula
    );
    return paciente;
  }
  async insertarPaciente(connection, paciente) {
    const pacienteServiceInstance = new pacienteService();
    const mypaciente = await pacienteServiceInstance.insertarPaciente(
      connection,
      paciente
    );
    return mypaciente;
  }
  async modificarPaciente(connection, paciente) {
    const pacienteServiceInstance = new pacienteService();
    const mypaciente = await pacienteServiceInstance.modificarPaciente(
      connection,
      paciente
    );
    return mypaciente;
  }
  async eliminarPaciente(connection, cedula) {
    const pacienteServiceInstance = new pacienteService();
    const paciente = await pacienteServiceInstance.eliminarPaciente(
      connection,
      cedula
    );
    return paciente;
  }
}

module.exports = pacienteHandler;
