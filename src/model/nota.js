class nota {
    constructor(idnotas, paciente_persona_cedula, encargado_id_encargado, turno, nota, estado) {
        this.idnotas = idnotas;
        this.paciente_persona_cedula = paciente_persona_cedula;
        this.encargado_id_encargado = encargado_id_encargado;
        this.turno = turno;
        this.nota = nota;
        this.estado = estado;
    }
}

module.exports = nota;