class signosVitales{
    constructor(cedula,temperatura, frecuencua_respiratoria, frecuencia_cardiaca, presion_arterial, saturacion_o, glic, respons, turno){
        this.cedula = cedula;
        this.temperatura = temperatura;
        this.frecuencua_respiratoria = frecuencua_respiratoria;
        this.frecuencia_cardiaca = frecuencia_cardiaca;
        this.presion_arterial = presion_arterial;
        this.saturacion_o = saturacion_o;
        this.glic = glic;
        this.respons = respons;
        this.turno = turno;
    }
}

module.exports = signosVitales;