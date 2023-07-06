const personaService = require("../services/personaService");
const persona = require("../model/persona");

class personaHandler {
  async listarPersonas(connection, page) {
    const personaServiceInstance = new personaService();
    const personas = await personaServiceInstance.listarPersonas(
      connection,
      page
    );
    return personas;
  }
  async consultarPersona(connection, cedula) {
    const personaServiceInstance = new personaService();
    const persona = await personaServiceInstance.consultarPersona(
      connection,
      cedula
    );
    return persona;
  }
  async insertarPersona(connection, persona) {
    const personaServiceInstance = new personaService();
    const mypersona = await personaServiceInstance.insertarPersona(
      connection,
      persona
    );
    return mypersona;
  }
  async actualizarPersona(connection, persona) {
    const personaServiceInstance = new personaService();
    const mypersona = await personaServiceInstance.actualizarPersona(
      connection,
      persona
    );
    return mypersona;
  }
    async eliminarPersona(connection, cedula) {
    const personaServiceInstance = new personaService();
    const mypersona = await personaServiceInstance.eliminarPersona(
        connection,
        cedula
        );
    return mypersona;
    }
}

module.exports = personaHandler;
