const cityService = require('../services/cityService');
const city = require('../model/city');

class cityHandler{
    async ConsultAllCities(connection){
        const cityServiceInstance = new cityService();
        const cities = await cityServiceInstance.ConsultAllCities(connection);
        return cities;
    }
}

module.exports = cityHandler;

//Fecht