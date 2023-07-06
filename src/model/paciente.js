class paciente{
    constructor(cedula, fecha_nacimiento, genero, estado_civil, escolaridad, habita, barrera_idiomatica, domicilio, religion){
        this.cedula = cedula;
        this.fecha_nacimiento = fecha_nacimiento;
        this.genero = genero;
        this.estado_civil = estado_civil;
        this.escolaridad = escolaridad;
        this.habita = habita;
        this.barrera_idiomatica = barrera_idiomatica;
        this.domicilio = domicilio;
        this.religion = religion;
    }
}

module.exports = paciente;